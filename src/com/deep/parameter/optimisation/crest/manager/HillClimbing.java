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
import java.util.Random;
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
public class HillClimbing {

	private String dir, pkg, app_name, report_dir, original_path, device, test_pkg;
	private ArrayList<String> files;
	private ArrayList<Alteration> alts;
	private static String apktool_path = "", tool_path="", adb_path = "";
	private ArrayList<Mutant> mutants, new_versions, new_versions_survived;
	private Logger log;
	private CommandManager cmd;
	private Mutant original;
	private int maximum;

	/**
	 * Constructor of the class
	 * @param m survived mutants
	 * @param directory directory of the original apk
	 * @param pkg package of the app
	 * @param report_dir path to the reports directory
	 */
	public HillClimbing(ArrayList<Mutant> m, String directory, String app_name, String pkg, String report_dir, Mutant original, String device, int max, String test_pkg){
		this.maximum = max;
		this.mutants = m;
		this.device = device;
		this.app_name = app_name;
		this.dir = directory;
		this.pkg = pkg;
		this.report_dir = report_dir;
		this.original = original;
		this.test_pkg = test_pkg;
		new_versions_survived = new ArrayList<>();
		log = new Logger(report_dir+"/AnalyzerLogger");
		String[] pkg_splitted = this.pkg.split("\\.");
		original_path = dir+"/bin/"+app_name+"-instrumented/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			original_path=original_path + pkg_splitted[i]+"/";
		}
		files = new ArrayList<>();
		loadPath();
	}

	/**
	 * This method allows to decode the apks and get the smali files
	 */
	public void generateSmaliFile(boolean only_mutants){
		String output;
		System.out.println(dir+" Starting generate Smali File ...");
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand(original_path);
		String[] lines = output.split(System.getProperty("line.separator"));
		for(int i=0; i<lines.length;i++){
			files.add(lines[i]);
		}
		for(int j=0;j<mutants.size();j++){
			cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", mutants.get(j).getApk_name()));
			output = cmd.executeCommand("mutants/"+dir);
			log.writeLog("apktool d "+mutants.get(j).getApk_name(), output);
			mutants.set(j, findDiff(mutants.get(j)));
		}
		ReportGenerator rg = new ReportGenerator(mutants, original);
		rg.generateHtmlReport(report_dir);
		if(!only_mutants){
			executeAlterated();
		}
		log.closeLogger();
		System.out.println(dir+" Reports generated");
	}

	private int generateRand(String originalLine){
		Random rand = new Random();
		int rand_num;
		if((originalLine.contains("const/4"))&&(maximum>7)){
			String t_original = "0x";
			String[] ori_var = originalLine.split("\\s+");
			if(ori_var[3].contains("-0x")){
				t_original="-0x";
			}
			int value_original = Integer.parseInt(ori_var[3].replace(t_original, ""), 16);
			int v = 7-value_original;
			if(v<=0){
				v=1;
			}
			rand_num = rand.nextInt(v) + 1;
		} else {
			rand_num = rand.nextInt(maximum) + 1;
		}
		return rand_num;
	}

	/**
	 * This method allows to create and manage the alteration of the original files
	 */
	private void executeAlterated(){
		boolean check;
		Mutant current = null;
		AppManager am = new AppManager(dir, device);
		String output,cpu_info;
		int deep;
		String[] cpu_used,memory_used;
		TestManager tl = new TestManager(test_pkg, report_dir, "NewVersionsFailed");
		new_versions = new ArrayList<>();
		int version_number= 0;
		alts = new ArrayList<>();
		for(int j=0;j<mutants.size();j++){
			alts.addAll(mutants.get(j).getAllAlteration());
		}
		Collections.sort(alts);
		for(int u=0;u<files.size();u++){
			for(int z=0;z<alts.size();z++){
				if(alts.get(z).getFile().equals(files.get(u))){
					String operation;
					int[] deeps = new int[] {generateRand(alts.get(z).getOriginalLine()),generateRand(alts.get(z).getOriginalLine()),generateRand(alts.get(z).getOriginalLine())};
					System.out.println("Deeps "+deeps[0]+" "+deeps[1]+" "+deeps[2]);
					for(int y=0;y<2;y++){
						int restart = 0;
						if(y==0){
							operation = "+";
						} else {
							operation = "-";
						}
						while(restart<3){
							Mutant best = null;
							int increment = 0;
							boolean stop = false;
							//if((alts.get(z).getAlteration_type().equals("ICR"))||(alts.get(z).getAlteration_type().equals("AOR"))){
							alts.get(z).setFinal_value(false);
							alts.get(z).setFinal_line(null);
							alts.get(z).setFailure(false);
							//}
							deep = deeps[restart];
							System.out.println("RESTART: "+deep+" "+operation);
							if(!alts.get(z).isFinal_value()){
								alterate(deep,alts.get(z),files.get(u),z,operation);
								check = compileApk(version_number);
								if(!check){
									alts.get(z).setFailure(true);
									if (alts.get(z).getFinal_line()==null) {
										alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
									}
									alterate(deep,alts.get(z),files.get(u),z,operation);
									restart++;
									stop = true;
								}
								resetApp(new_versions.get(version_number).getApk_name());
								CommandManager 	cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "reboot"));
								output = cmd.executeCommand(dir);
								while(!output.contains(device)){
									try {
										TimeUnit.SECONDS.sleep(40);
									} catch (InterruptedException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
									cmd = new CommandManager(new ProcessBuilder(adb_path, "devices"));
									output = cmd.executeCommand(dir);
								}
								System.out.println(dir+" Launching new version: "+new_versions.get(version_number).getApk_name() +" ...");
								long startTime = System.nanoTime();
								tl.executeTest(new_versions.get(version_number).getApk_name());
								long endTime = System.nanoTime();
								cpu_info = am.getCpuInfo();
								memory_used = am.getMemInfo().split("\\s+");
								log.writeLog("dumpsys memInfo", memory_used.toString());
								log.writeLog("dumpsys cpuInfo", cpu_info.toString());
								long duration = (endTime - startTime)/1000000;
								if(tl.getTestFailed()==0){
									cpu_used = cpu_info.split(" ");
									if((alts.get(z).getAlteration_type().equals("ICR"))||(alts.get(z).getAlteration_type().equals("AOR"))){
										new_versions.get(version_number).setDeep(deep);
									} else {
										new_versions.get(version_number).setDeep(0);
									}
									new_versions.get(version_number).setExecution_time(duration);
									try{
										new_versions.get(version_number).setCpu_pct(Double.parseDouble(cpu_used[2].replace("+", "")));
										new_versions.get(version_number).setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
										new_versions.get(version_number).setUser_pct(Double.parseDouble(cpu_used[4]));
										new_versions.get(version_number).setSystem_pct(Double.parseDouble(cpu_used[7]));
									} catch(ArrayIndexOutOfBoundsException e){
										new_versions.get(version_number).setCpu_pct(0);
										new_versions.get(version_number).setCpu_time(0);
										new_versions.get(version_number).setUser_pct(0);
										new_versions.get(version_number).setSystem_pct(0);
									}
									try{
										new_versions.get(version_number).setHeap_size(Long.parseLong(memory_used[7]));
										new_versions.get(version_number).setHeap_alloc(Long.parseLong(memory_used[8]));
										new_versions.get(version_number).setHeap_free(Long.parseLong(memory_used[9]));
									} catch(ArrayIndexOutOfBoundsException e){
										new_versions.get(version_number).setHeap_size(0);
										new_versions.get(version_number).setHeap_alloc(0);
										new_versions.get(version_number).setHeap_free(0);
									}
									if(current == null){
										current = new_versions.get(version_number);
										//} else if(current.getExecution_time()>=new_versions.get(version_number).getExecution_time()){
									} else if(current.getHeap_alloc()>=new_versions.get(version_number).getHeap_alloc()){

										current = new_versions.get(version_number);
									}
									new_versions_survived.add(new_versions.get(version_number));
									System.out.println(dir+" Survived");
									alts.get(z).setFinal_line(alts.get(z).getCurrent_line());
									if(best == null){
										best = new_versions.get(version_number);
									} 
									//if(best.getExecution_time()>=new_versions.get(version_number).getExecution_time()){
									if(best.getHeap_alloc()>=new_versions.get(version_number).getHeap_alloc()){
										best = new_versions.get(version_number);
									} else {
										restart++;
										stop = true;
									}
									if((alts.get(z).getAlteration_type().equals("LCR"))||(alts.get(z).getAlteration_type().equals("ROR"))){
										restart=3;
										stop=true;
										y=2;
									}
									if(alts.get(z).getAlteration_type().equals("AOR")&&(!(alts.get(z).getOriginalLine().contains("0x")))){
										restart=3;
										stop=true;
										y=2;
									}
									version_number++;
								} else {
									alts.get(z).setFailure(true);
									if (alts.get(z).getFinal_line()==null) {
										alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
									}
									alterate(deep,alts.get(z),files.get(u),z,operation);
									System.out.println(dir+" Killed");
									restart++;
									stop = true;
									version_number++;
								}

							}
							while(!stop){
								increment++;
								System.out.println("INCREMENT "+increment+" "+operation);
								if(!alts.get(z).isFinal_value()){
									alterate(deep+increment,alts.get(z),files.get(u),z,operation);
									check = compileApk(version_number);
									if(!check){
										alts.get(z).setFailure(true);
										if (alts.get(z).getFinal_line()==null) {
											alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
										}
										alterate(deep+increment,alts.get(z),files.get(u),z,operation);
										restart++;
										stop = true;
									}
									resetApp(new_versions.get(version_number).getApk_name());
									CommandManager 	cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "reboot"));
									output = cmd.executeCommand(dir);
									while(!output.contains(device)){
										try {
											TimeUnit.SECONDS.sleep(40);
										} catch (InterruptedException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
										}
										cmd = new CommandManager(new ProcessBuilder(adb_path, "devices"));
										output = cmd.executeCommand(dir);
									}
									System.out.println(dir+" Launching new version: "+new_versions.get(version_number).getApk_name() +" ...");
									long startTime = System.nanoTime();
									tl.executeTest(new_versions.get(version_number).getApk_name());
									long endTime = System.nanoTime();
									cpu_info = am.getCpuInfo();
									memory_used = am.getMemInfo().split("\\s+");
									log.writeLog("dumpsys memInfo", memory_used.toString());
									log.writeLog("dumpsys cpuInfo", cpu_info.toString());
									long duration = (endTime - startTime)/1000000;
									if(tl.getTestFailed()==0){
										cpu_used = cpu_info.split(" ");
										if((alts.get(z).getAlteration_type().equals("ICR"))||(alts.get(z).getAlteration_type().equals("AOR"))){
											new_versions.get(version_number).setDeep(deep+increment);
										} else {
											new_versions.get(version_number).setDeep(0);
										}
										new_versions.get(version_number).setExecution_time(duration);
										try{
											new_versions.get(version_number).setCpu_pct(Double.parseDouble(cpu_used[2].replace("+", "")));
											new_versions.get(version_number).setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
											new_versions.get(version_number).setUser_pct(Double.parseDouble(cpu_used[4]));
											new_versions.get(version_number).setSystem_pct(Double.parseDouble(cpu_used[7]));
										} catch(ArrayIndexOutOfBoundsException e){
											new_versions.get(version_number).setCpu_pct(0);
											new_versions.get(version_number).setCpu_time(0);
											new_versions.get(version_number).setUser_pct(0);
											new_versions.get(version_number).setSystem_pct(0);
										}
										try{
											new_versions.get(version_number).setHeap_size(Long.parseLong(memory_used[7]));
											new_versions.get(version_number).setHeap_alloc(Long.parseLong(memory_used[8]));
											new_versions.get(version_number).setHeap_free(Long.parseLong(memory_used[9]));
										} catch(ArrayIndexOutOfBoundsException e){
											new_versions.get(version_number).setHeap_size(0);
											new_versions.get(version_number).setHeap_alloc(0);
											new_versions.get(version_number).setHeap_free(0);
										}
										//	if(current.getExecution_time()>=new_versions.get(version_number).getExecution_time()){
										if(current.getHeap_alloc()>=new_versions.get(version_number).getHeap_alloc()){
											current = new_versions.get(version_number);
										}
										new_versions_survived.add(new_versions.get(version_number));
										System.out.println(dir+" Survived");
										alts.get(z).setFinal_line(alts.get(z).getCurrent_line());
										//if(best.getExecution_time()>=new_versions.get(version_number).getExecution_time()){
										if(best.getHeap_alloc()>=new_versions.get(version_number).getHeap_alloc()){
											best = new_versions.get(version_number);
										}  else {
											restart++;
											stop = true;
										}
										if(alts.get(z).getAlteration_type().equals("AOR")&&(!(alts.get(z).getOriginalLine().contains("0x")))){
											restart=3;
											stop=true;
											y=2;
										}
										version_number++;
									} else {
										alts.get(z).setFailure(true);
										if (alts.get(z).getFinal_line()==null) {
											alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
										}
										alterate(deep+increment,alts.get(z),files.get(u),z,operation);
										System.out.println(dir+" Killed");
										restart++;
										stop = true;
										version_number++;
									}
								} else {
									stop = true;
								}
							}
							if(best!=null){
								alterate(best.getDeep(),alts.get(z),files.get(u),z,operation);
							}
						}
					}
				}
			}
		}
		System.out.println("END "+current.getApk_name()+" "+current.getHeap_alloc()+" "+current.getDeep());
		ReportGenerator rg = new ReportGenerator(new_versions_survived, original);
		rg.generateHtmlAlteratedReport(report_dir);
	}

	/**
	 * Method that allows to alterate the single mutation of the files
	 * @param deep value to add
	 * @param alt alteration to use
	 * @param file file to modify
	 * @param alt_num alteration number
	 */
	private void alterate(int deep, Alteration alt, String file, int alt_num, String operation){
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
						if(alt.isFailure()){
							new_line = alts.get(alt_num).getFinal_line();
							alts.get(alt_num).setFinal_value(true);
						} else {
							String t_mutated = "0x";
							String t_original = "0x";
							String[] mut_var = alt.getMutatedLine().split("\\s+");
							String[] ori_var = alt.getOriginalLine().split("\\s+");
							if(mut_var[3].contains("-0x")){
								t_mutated="-0x";
							}
							if(ori_var[3].contains("-0x")){
								t_original="-0x";
							}
							int value_mutated = Integer.parseInt(mut_var[3].replace(t_mutated, ""), 16);
							int value_original = Integer.parseInt(ori_var[3].replace(t_original, ""), 16);
							if(operation.equalsIgnoreCase("+")){
								value_original += deep;
							} else {
								value_original -= deep;
							}
							if(value_original<0){
								value_original=Math.abs(value_original);
								t_mutated="-0x";
							}
							String hex = Integer.toHexString(value_original);
							new_line ="    "+mut_var[1]+" "+mut_var[2]+" "+t_mutated+hex;
							alts.get(alt_num).setCurrent_line(new_line);
						}
						System.out.println(alt.getOriginalLine() +" - "+alt.getMutatedLine()+" - "+new_line);
					} else if(alt.getAlteration_type().equals("LCR")||alt.getAlteration_type().equals("ROR")){
						if(alt.isFailure()){
							new_line = alts.get(alt_num).getFinal_line();
							alts.get(alt_num).setFinal_value(true);
						} else {
							String[] mut_var = alt.getMutatedLine().split("\\s+");
							String[] ori_var = alt.getOriginalLine().split("\\s+");
							new_line="    "+mut_var[1];
							for(int j=2;j<ori_var.length;j++){
								new_line+=" "+ori_var[j];
							}
							alts.get(alt_num).setCurrent_line(new_line);
							alts.get(alt_num).setFinal_value(true);
						}
						System.out.println(alt.getOriginalLine() +" - "+alt.getMutatedLine()+" - "+new_line);
					} else if(alt.getAlteration_type().equals("AOR")){
						if(alt.isFailure()){
							new_line = alts.get(alt_num).getFinal_line();
							alts.get(alt_num).setFinal_value(true);
						} else {
							String t_original = "0x";
							String[] ori_var = alt.getOriginalLine().split("\\s+");
							if(line.contains(t_original)){
								if(ori_var[4].contains("-0x")){
									t_original="-0x";
								}
								int value_original = Integer.parseInt(ori_var[4].replace(t_original, ""), 16);
								value_original += deep;
								String hex = Integer.toHexString(value_original);
								new_line ="    "+ori_var[1]+" "+ori_var[2]+" "+ori_var[3]+" "+t_original+hex;
								alts.get(alt_num).setCurrent_line(new_line);
							} else {
								new_line = line;
								alts.get(alt_num).setCurrent_line(new_line);
								alts.get(alt_num).setFinal_value(true);
							}
						}
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
	 * This method allows to find the differences between the mutants and the orginal apk
	 * @param m mutant to analyze
	 * @return mutant with alteration saved
	 */
	public Mutant findDiff(Mutant m){
		String[] pkg_splitted = this.pkg.split("\\.");
		String path = "mutants/"+dir+"/"+m.getApk_name().replace(".apk", "")+"/smali/";
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
				in.close();
				original_in.close();
				reader.close();
				original_reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return m;
	}

	/**
	 * method that allows to compile and sign the new apks
	 * @param n number of the new apk
	 * @return false if get a failure during the compiling
	 */
	private boolean compileApk(int n){
		String output;
		boolean ret=true;
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "b", original.getApk_name().replace(".apk", "")));
		output = cmd.executeCommand(dir+"/bin/");
		if(output.contains("Exception in thread")){
			ret =  false;
		}
		log.writeLog("apktool b", output);
		cmd = new CommandManager(new ProcessBuilder("java", "-jar", "signapk.jar", "certificate.pem", "key.pk8", tool_path+
				"/"+dir+"/bin/"+original.getApk_name().replace(".apk", "")+
				"/dist/"+original.getApk_name(), tool_path+"/SignApk/"+app_name+"-instrumented-"+n+".apk"));
		output = cmd.executeCommand("SignApk");
		log.writeLog("Sign apk ", output);
		new_versions.add(new Mutant(app_name+"-instrumented-"+n+".apk"));
		return ret;
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

	private void openApp() {
		// TODO Auto-generated method stub
		cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "monkey", "-p", pkg, "-c", "android.intent.category.LAUNCHER", "1"));
		String output = cmd.executeCommand(dir);
		log.writeLog("adb shell monkey ", output);
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