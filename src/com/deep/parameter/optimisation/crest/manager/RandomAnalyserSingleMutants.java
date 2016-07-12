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
import java.util.HashMap;
import java.util.Map;
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
public class RandomAnalyserSingleMutants {

	private String dir, pkg, app_name, report_dir, original_path, device, test_pkg;
	private ArrayList<String> files;
	private ArrayList<Alteration> alts;
	private static String apktool_path = "", tool_path="", adb_path = "";
	private ArrayList<Mutant> mutants, new_versions, new_versions_survived;
	private Logger log;
	private CommandManager cmd;
	private Mutant original;
	private int cycles, maximum;

	/**
	 * Constructor of the class
	 * @param m survived mutants
	 * @param directory directory of the original apk
	 * @param pkg package of the app
	 * @param report_dir path to the reports directory
	 */
	public RandomAnalyserSingleMutants(ArrayList<Mutant> m, String directory, String app_name, String pkg, String report_dir, Mutant original, String device, int cycles, int max, String test_pkg){
		this.maximum = max;
		this.cycles = cycles;
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

	private String getResult(Mutant mu){
		float val = ((float)original.getExecution_time()/(float)mu.getExecution_time()-1)*100;
		System.out.println("VALORE: "+val);
		if (val>1) return "WIN";
		else if (val<0) return "LOSS";
		else return "TIE";
	}

	/**
	 * This method allows to create and manage the alteration of the original files
	 */
	private void executeAlterated(){
		Map<String, ArrayList<String>> results = new HashMap<>();
		boolean check;
		AppManager am = new AppManager(dir, device);
		String output,cpu_info;
		String[] cpu_used,memory_used;
		TestManager tl = new TestManager(test_pkg, report_dir, "NewVersionsFailed");
		new_versions = new ArrayList<>();
		int version_number= 0;
		alts = new ArrayList<>();
		for(int j=0;j<mutants.size();j++){
			alts.addAll(mutants.get(j).getAllAlteration());
		}
		Collections.sort(alts);
		for(Alteration al: alts){
			System.out.println(al.getAlteration_type());
		}
		for(int u=0;u<files.size();u++){
			for(int z=0;z<alts.size();z++){
				if(alts.get(z).getFile().equals(files.get(u))){
					Random rand = new Random();
					int rand_num;
					if((alts.get(z).getOriginalLine().contains("const/4"))&&(maximum>7)){
						String t_original = "0x";
						String[] ori_var = alts.get(z).getOriginalLine().split("\\s+");
						if(ori_var[3].contains("-0x")){
							t_original="-0x";
						}
						int value_original = Integer.parseInt(ori_var[3].replace(t_original, ""), 16);
						int v = 7-value_original;
						if(v<=0){
							v=1;
						}
						rand_num = rand.nextInt(v) + 1;
						alts.get(z).setDeep(rand_num);
					} else {
						rand_num = rand.nextInt(maximum) + 1;
						alts.get(z).setDeep(rand_num);
					}
					if(!alts.get(z).isFinal_value()){
						alterate(alts.get(z).getDeep(),alts.get(z),files.get(u),z);
						check = compileApk(version_number);
						if(!check){
							alts.get(z).setFailure(true);
							if (alts.get(z).getFinal_line()==null) {
								alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
							}
							alterate(alts.get(z).getDeep(),alts.get(z),files.get(u),z);
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
								new_versions.get(version_number).setDeep(alts.get(z).getDeep());
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
							new_versions_survived.add(new_versions.get(version_number));
							ArrayList<String> re = new ArrayList<>();
							re.add(getResult(new_versions.get(version_number)));
							results.put(new_versions.get(version_number).getApk_name(),re);
							System.out.println(dir+" Survived");
							alts.get(z).setFinal_line(alts.get(z).getCurrent_line());
							alterate(0,alts.get(z),files.get(u),z);
						} else {
							alts.get(z).setFailure(true);
							if (alts.get(z).getFinal_line()==null) {
								alts.get(z).setFinal_line(alts.get(z).getMutatedLine());
							}
							alterate(alts.get(z).getDeep(),alts.get(z),files.get(u),z);
							System.out.println(dir+" Killed");
						}
						version_number++;
					}
				}
			}
		}
		// ESECUZIONE
		System.out.println("INIZIO ALTERAZIONE");
		for(int u=0;u<files.size();u++){
			for(int z=0;z<alts.size();z++){
				if(alts.get(z).getFile().equals(files.get(u))){
					alterate(alts.get(z).getDeep(),alts.get(z),files.get(u),z);
				}
			}
		}
		check = compileApk(version_number);
		resetApp(new_versions.get(version_number).getApk_name());
		CommandManager 	cmd2 = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "reboot"));
		output = cmd2.executeCommand(dir);
		while(!output.contains(device)){
			try {
				TimeUnit.SECONDS.sleep(40);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			cmd2 = new CommandManager(new ProcessBuilder(adb_path, "devices"));
			output = cmd2.executeCommand(dir);
		}
		System.out.println(dir+" Launching new version: "+new_versions.get(version_number).getApk_name() +" ...");
		long startTime2 = System.nanoTime();
		tl.executeTest(new_versions.get(version_number).getApk_name());
		long endTime2 = System.nanoTime();
		cpu_info = am.getCpuInfo();
		memory_used = am.getMemInfo().split("\\s+");
		log.writeLog("dumpsys memInfo", memory_used.toString());
		log.writeLog("dumpsys cpuInfo", cpu_info.toString());
		long duration2 = (endTime2 - startTime2)/1000000;
		if(tl.getTestFailed()==0){
			cpu_used = cpu_info.split(" ");
			new_versions.get(version_number).setExecution_time(duration2);
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
			new_versions_survived.add(new_versions.get(version_number));
			ArrayList<String> re = new ArrayList<>();
			re.add(getResult(new_versions.get(version_number)));
			results.put(new_versions.get(version_number).getApk_name(),re);
			System.out.println(dir+" Survived");
		} else {
			System.out.println(dir+" Killed");
		}
		version_number++;
		System.out.println("FINE ALTERAZIONE");
		// EXECUTION

		// PARTE 3
		System.out.println("INIZIO ALTERAZIONE PARTE 3");
		
		for(int p=0;p<30;p++){
			Random rand2 = new Random();
			int M = rand2.nextInt((9 - 2) + 1) + 2;
			System.out.println("STAMPO M: "+ M);
			ArrayList<Integer> values = new ArrayList<Integer>();
			for(int u=0;u<M;u++){
				boolean ck = false;
				while(!ck){
					int val = rand2.nextInt((9 - 0) + 1) + 0;
					if(!values.contains(val)){
						values.add(val);
						ck = true;
					}
				}
			}
			System.out.println("PULIZIA");
			cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", app_name+"-instrumented.apk"));
			output = cmd.executeCommand(dir+"/bin");
			for(int u=0;u<files.size();u++){
				for(int z=0;z<alts.size();z++){
					if(values.contains(z)){
						if(alts.get(z).getFile().equals(files.get(u))){
							alterate(alts.get(z).getDeep(),alts.get(z),files.get(u),z);
						}
					}
				}
			}
			check = compileApk(version_number);
			resetApp(new_versions.get(version_number).getApk_name());
			CommandManager 	cmd4 = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "reboot"));
			output = cmd4.executeCommand(dir);
			while(!output.contains(device)){
				try {
					TimeUnit.SECONDS.sleep(40);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				cmd4 = new CommandManager(new ProcessBuilder(adb_path, "devices"));
				output = cmd4.executeCommand(dir);
			}
			System.out.println(dir+" Launching new version: "+new_versions.get(version_number).getApk_name() +" ...");
			long startTime3 = System.nanoTime();
			tl.executeTest(new_versions.get(version_number).getApk_name());
			long endTime3 = System.nanoTime();
			cpu_info = am.getCpuInfo();
			memory_used = am.getMemInfo().split("\\s+");
			log.writeLog("dumpsys memInfo", memory_used.toString());
			log.writeLog("dumpsys cpuInfo", cpu_info.toString());
			long duration3 = (endTime3 - startTime3)/1000000;
			if(tl.getTestFailed()==0){
				cpu_used = cpu_info.split(" ");
				new_versions.get(version_number).setExecution_time(duration3);
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
				new_versions_survived.add(new_versions.get(version_number));
				ArrayList<String> re = new ArrayList<>();
				re.add(getResult(new_versions.get(version_number)));
				results.put(new_versions.get(version_number).getApk_name(),re);
				System.out.println(dir+" Survived");
			} else {
				System.out.println(dir+" Killed");
			}
			version_number++;
		}
		System.out.println("FINE ALTERAZIONE PARTE 3");
		// EXECUTION

		System.out.println("ESECUZIONE");
		ArrayList<Mutant> temp_versions = new ArrayList<>();
		temp_versions = new_versions_survived;
		int size = temp_versions.size();
		new_versions = new ArrayList<>();
		for(int v=1;v<cycles;v++){
			for(int j=0;j<size;j++){
				int win = Collections.frequency(results.get(temp_versions.get(j).getApk_name()),"WIN");
				int loss = Collections.frequency(results.get(temp_versions.get(j).getApk_name()),"LOSS");
				int tie = Collections.frequency(results.get(temp_versions.get(j).getApk_name()),"TIE");
				System.out.println("WIN: "+win+" LOSS: "+loss+" TIE: "+tie);
				if (win<6&&loss<6){
					resetApp(temp_versions.get(j).getApk_name());
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
					System.out.println(dir+" Launching new version: "+temp_versions.get(j).getApk_name() +" ...");
					long startTime = System.nanoTime();
					tl.executeTest(temp_versions.get(j).getApk_name());
					long endTime = System.nanoTime();
					//openApp();
					cpu_info = am.getCpuInfo();
					memory_used = am.getMemInfo().split("\\s+");
					log.writeLog("dumpsys memInfo", memory_used.toString());
					log.writeLog("dumpsys cpuInfo", cpu_info.toString());
					long duration = (endTime - startTime)/1000000;
					if(tl.getTestFailed()==0){
						cpu_used = cpu_info.split(" ");
						Mutant new_version = new Mutant(temp_versions.get(j).getApk_name());
						new_version.setExecution_time(duration);
						new_version.setDeep(temp_versions.get(j).getDeep());
						try{
							new_version.setCpu_pct(Double.parseDouble(cpu_used[2].replace("+", "")));
							new_version.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
							new_version.setUser_pct(Double.parseDouble(cpu_used[4]));
							new_version.setSystem_pct(Double.parseDouble(cpu_used[7]));
						} catch(Exception e){
							new_version.setCpu_pct(0);
							new_version.setCpu_time(0);
							new_version.setUser_pct(0);
							new_version.setSystem_pct(0);
						}
						try{
							new_version.setHeap_size(Long.parseLong(memory_used[7]));
							new_version.setHeap_alloc(Long.parseLong(memory_used[8]));
							new_version.setHeap_free(Long.parseLong(memory_used[9]));
						} catch(Exception e){
							new_version.setHeap_size(0);
							new_version.setHeap_alloc(0);
							new_version.setHeap_free(0);
						}
						new_versions_survived.add(new_version);
						ArrayList<String> re = new ArrayList<>();
						re = results.get(new_version.getApk_name());
						re.add(getResult(new_version));
						results.put(new_version.getApk_name(),re);
						System.out.println(dir+" Survived "+getResult(new_version));
					} else {
						System.out.println(dir+" Killed");
					}
				}
			}
		}
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
							if(value_mutated>value_original){
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
						} else if(deep==0) {
							alts.get(alt_num).setCurrent_line(alts.get(alt_num).getOriginalLine());
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
			in.close();
			reader.close();
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
