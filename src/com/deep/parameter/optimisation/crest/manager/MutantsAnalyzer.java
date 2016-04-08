package com.deep.parameter.optimisation.crest.manager;

import static java.nio.file.StandardOpenOption.*;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import com.deep.parameter.optimisation.crest.beans.Alteration;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;
import com.deep.parameter.optimisation.crest.utilities.ReportGenerator;
/**
 * This Class Allows to analyze the mutants survived and gets the difference with the Original apk
 * @author Davide
 *
 */
public class MutantsAnalyzer {

	private String dir, pkg, report_dir, original_path, device;
	private ArrayList<String> files;
	private ArrayList<Alteration> alts;
	private static String apktool_path = "", tool_path="", adb_path = "";
	private ArrayList<Mutant> mutants, new_versions, new_versions_survived;
	private Logger log;
	private CommandManager cmd;
	private Mutant original;

	/**
	 * Constructor of the class
	 * @param m survived mutants
	 * @param directory directory of the original apk
	 * @param pkg package of the app
	 * @param report_dir path to the reports directory
	 */
	public MutantsAnalyzer(ArrayList<Mutant> m, String directory, String pkg, String report_dir, Mutant original, String device){
		this.mutants = m;
		this.device = device;
		this.dir = directory;
		this.pkg = pkg;
		this.report_dir = report_dir;
		this.original = original;
		new_versions_survived = new ArrayList<>();
		log = new Logger(report_dir+"/AnalyzerLogger");
		String[] pkg_splitted = this.pkg.split("\\.");
		original_path = dir+"/bin/"+dir+"-instrumented/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			original_path=original_path + pkg_splitted[i]+"/";
		}
		files = new ArrayList<>();
		loadPath();
	}

	/**
	 * This method allows to decode the apks and get the smali files
	 */
	public void generateSmaliFile(){
		String output;
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", dir+"-instrumented.apk"));
		output = cmd.executeCommand(dir+"/bin");
		log.writeLog("apktool d", output);
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand(original_path);
		String[] lines = output.split(System.getProperty("line.separator"));
		for(int i=0; i<lines.length;i++){
			//if(!lines[i].contains("$")){
			files.add(lines[i]);
			//}
		}
		for(int j=0;j<mutants.size();j++){
			cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", mutants.get(j).getApk_name()));
			output = cmd.executeCommand("mutants");
			log.writeLog("apktool d "+mutants.get(j).getApk_name(), output);
			mutants.set(j, findDiff(mutants.get(j)));
		}
		ReportGenerator rg = new ReportGenerator(mutants, original);
		rg.generateHtmlReport(report_dir);
		executeAlterated();
		System.out.println("Reports generated");
	}

	private void executeAlterated(){
		String output,cpu_info;
		String[] cpu_used,memory_used;
		TestManager tl = new TestManager("com.deep.parameter.optimisation.crest.test", report_dir, "NewVersionsFailed");
		new_versions = new ArrayList<>();
		int version_number= 0;
		for(int i=0;i<10;i++){
			System.out.println("Numero alte da fare " + i);
			alts = new ArrayList<>();
			for(int j=0;j<mutants.size();j++){
				alts.addAll(mutants.get(j).getAllAlteration());
			}
			Collections.sort(alts);
			for(int u=0;u<files.size();u++){
				for(int z=0;z<alts.size();z++){
					if(alts.get(z).getFile().equals(files.get(u))){
						System.out.println("Numero alter " + z);
						alterate((i+1),alts.get(z),files.get(u),z);
						if(!alts.get(z).isFinal_val()){
							compileApk(version_number);
							resetApp(new_versions.get(version_number).getApk_name());
							CommandManager 	cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "reboot"));
							output = cmd.executeCommand(dir);
							while(!output.contains(device)){
								try {
									TimeUnit.SECONDS.sleep(20);
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								cmd = new CommandManager(new ProcessBuilder(adb_path, "devices"));
								output = cmd.executeCommand(dir);
							}
							System.out.println("Launching "+new_versions.get(version_number).getApk_name() +" ...");
							long startTime = System.nanoTime();
							tl.executeTest(new_versions.get(version_number).getApk_name());
							long endTime = System.nanoTime();
							cpu_info = getCpuInfo();
							memory_used = getMemInfo().split("\\s+");
							long duration = (endTime - startTime)/1000000;
							if(tl.getTestFailed()==0){
								cpu_used = cpu_info.split(" ");
								new_versions.get(version_number).setExecution_time(duration);
								new_versions.get(version_number).setCpu_pct(Double.parseDouble(cpu_used[2]));
								new_versions.get(version_number).setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
								new_versions.get(version_number).setUser_pct(Double.parseDouble(cpu_used[4]));
								new_versions.get(version_number).setSystem_pct(Double.parseDouble(cpu_used[7]));
								new_versions.get(version_number).setHeap_size(Long.parseLong(memory_used[7]));
								new_versions.get(version_number).setHeap_alloc(Long.parseLong(memory_used[8]));
								new_versions.get(version_number).setHeap_free(Long.parseLong(memory_used[9]));
								new_versions_survived.add(new_versions.get(version_number));
							} else {
								alts.get(z).setFinal_val(true);
								alts.get(z).setVal(i-1);
							}
							version_number++;
						}
					}
				}
			}
		}
		ReportGenerator rg = new ReportGenerator(new_versions_survived, original);
		rg.generateHtmlAlteratedReport(report_dir);
	}

	private void alterate(int deep, Alteration alt, String file, int alt_num){
		String output;
		try{
			Path new_file = Paths.get(this.original_path+"/new_file.smali");
			Path original_file = Paths.get(this.original_path+"/"+file);
			InputStream in = Files.newInputStream(original_file);
			BufferedReader reader = new BufferedReader(new InputStreamReader(in));
			OutputStream out = new BufferedOutputStream(Files.newOutputStream(new_file, CREATE));
			String line = null;
			String new_line = null;
			long line_number=0;
			while ((line = reader.readLine()) != null){
				line_number++;
				if(line_number==alt.getLine_number()){
					if(alt.getAlteration_type().equals("ICR")){
						String t = "0x";
						String t_mutated = "0x";
						String t_original = "0x";
						String[] var = line.split("\\s+");
						String[] mut_var = alt.getMutatedLine().split("\\s+");
						String[] ori_var = alt.getOriginalLine().split("\\s+");
						if(var[3].contains("-0x")){
							t="-0x";
						}
						if(mut_var[3].contains("-0x")){
							t_mutated="-0x";
						}
						if(ori_var[3].contains("-0x")){
							t_original="-0x";
						}
						int value_mutated = Integer.parseInt(mut_var[3].replace(t_mutated, ""), 16);
						int value_original = Integer.parseInt(ori_var[3].replace(t_original, ""), 16);
						int val = Integer.parseInt(var[3].replace(t_original, ""), 16);
						if(alt.isFinal_val()){
							deep = alt.getVal();
						}
						if(value_mutated>value_original){
							value_original += deep;
						} else {
							value_original -= deep;
						}
						if(value_original<0){
							value_original = 0;
							alts.get(alt_num).setFinal_val(true);
						} 
						String hex = Integer.toHexString(value_original);
						new_line ="    "+var[1]+" "+var[2]+" "+t+hex;
						System.out.println(alt.getOriginalLine() +" - "+alt.getMutatedLine()+" - "+new_line);
					}
				} else {
					new_line = line;
				}
				new_line = new_line+"\n";
				byte data[]= new_line.getBytes();
				out.write(data, 0, data.length);
				out.flush();
			}
			out.close();
			cmd = new CommandManager(new ProcessBuilder("rm",file));
			output = cmd.executeCommand(original_path);
			cmd = new CommandManager(new ProcessBuilder("mv","new_file.smali",file));
			output = cmd.executeCommand(original_path);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Method that allows to get cpu information from the device
	 * @return cpu information
	 */
	private String getCpuInfo(){
		String output;
		String cpu_info = "";
		CommandManager cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "dumpsys", "cpuinfo", pkg));
		output = cmd.executeCommand(dir);
		log.writeLog("dumpsys cpuinfo", output);
		String[] lines = output.split(System.getProperty("line.separator"));
		for(int i=0; i<lines.length;i++){
			if(lines[i].contains(pkg)){
				cpu_info = lines[i];
				break;
			}
		}
		cpu_info = cpu_info.replace("%", "");
		return cpu_info;
	}

	/**
	 * Method that allows to get memory information from the device
	 * @return memory information
	 */
	private String getMemInfo(){
		CommandManager 	cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "dumpsys", "meminfo", pkg));
		String output;
		String mem_info = "";
		output = cmd.executeCommand(dir);
		log.writeLog("dumpsys memInfo", output);
		String[] lines = output.split(System.getProperty("line.separator"));
		for(int i=0; i<lines.length;i++){
			if(lines[i].contains("Native Heap")){
				mem_info = lines[i];
				break;
			}
		}
		return mem_info;
	}

	/**
	 * This method allows to find the differences between the mutants and the orginal apk
	 * @param m mutant to analyze
	 * @return mutant with alteration saved
	 */
	public Mutant findDiff(Mutant m){
		String[] pkg_splitted = this.pkg.split("\\.");
		String path = "mutants/"+m.getApk_name().replace(".apk", "")+"/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			path=path + pkg_splitted[i]+"/";
		}
		for(int j=0;j<files.size();j++){
			Path mutant_path = Paths.get("./"+path+"/"+files.get(j));
			Path original_path = Paths.get(this.original_path+"/"+files.get(j));
			try {
				InputStream in = Files.newInputStream(mutant_path);
				InputStream original_in = Files.newInputStream(original_path);
				BufferedReader reader = new BufferedReader(new InputStreamReader(in));
				BufferedReader original_reader = new BufferedReader(new InputStreamReader(original_in));
				String line = null;
				String original_line = null;
				long line_number=0;
				while (((line = reader.readLine()) != null)&&(original_line = original_reader.readLine()) != null) {
					line_number++;
					if(!line.equals(original_line)){
						String alteration_type= null;
						if(line.contains("const")) alteration_type= "ICR";
						else if(((line.contains("if-nez"))||(line.contains("if-eqz")))&&((original_line.contains("if-nez"))||(original_line.contains("if-eqz")))) alteration_type= "LCR";
						else if((line.contains("if-eq"))||(line.contains("if-ne"))||(line.contains("if-lt"))||(line.contains("if-ge"))||(line.contains("if-gt"))||(line.contains("if-le"))) alteration_type= "ROR";
						else if((line.contains("add-"))||(line.contains("rsub-"))||(line.contains("sub-"))||(line.contains("div-"))||(line.contains("mul-"))||(line.contains("rem-"))) alteration_type= "AOR";
						else if(line.contains("not-")||(line.contains("neg-"))) alteration_type= "UOI";
						else if(line.contains("return")) alteration_type= "RVR";
						m.addAlteration(new Alteration(files.get(j), line, original_line, line_number,alteration_type));
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return m;
	}

	private void compileApk(int n){
		String output;
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "b", original.getApk_name().replace(".apk", "")));
		output = cmd.executeCommand(dir+"/bin/");
		log.writeLog("apktool b", output);
		cmd = new CommandManager(new ProcessBuilder("java", "-jar", "signapk.jar", "certificate.pem", "key.pk8", tool_path+
				"/"+dir+"/bin/"+original.getApk_name().replace(".apk", "")+
				"/dist/"+original.getApk_name(), tool_path+"/SignApk/"+dir+"-instrumented-"+n+".apk"));
		output = cmd.executeCommand("SignApk");
		log.writeLog("Sign apk ", output);
		new_versions.add(new Mutant(dir+"-instrumented-"+n+".apk"));
	}

	/**
	 * Method that allows to reset the app on the device, unistall and install.
	 * @param directory directory of the app
	 */
	public void resetApp(String apk){
		String output;
		cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "uninstall", pkg ));
		output = cmd.executeCommand(dir);
		log.writeLog("adb uninstall", output);
		cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "install", "-reinstall", "./"+apk));
		output = cmd.executeCommand("SignApk");
		log.writeLog("adb install", output);
	}

	/**
	 * This method loads the path from the config file
	 */
	private void loadPath(){
		Properties prop = new Properties();
		InputStream input = null;
		try {
			input = new FileInputStream("config.properties");
			prop.load(input);			
			apktool_path = prop.getProperty("apktool_path");
			tool_path = prop.getProperty("tool_path");
			adb_path = prop.getProperty("adb_path");
		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
