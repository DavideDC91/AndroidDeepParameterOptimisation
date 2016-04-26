package com.deep.parameter.optimisation.crest.manager;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import com.deep.parameter.optimisation.crest.beans.Alteration;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;

/**
 * This class Allows to manage the interaction of the applications with the device
 * and allows to execute the original apk, mutants and get informations about their execution
 * @author Davide
 *
 */
public class AppManager {
	private String dir, app_name, apk, pkg, device, report_dir;
	private Logger log, survived_mutants_log, killed_mutants_log;
	private CommandManager cmd;
	private TestManager tl;
	private Mutant original;
	private ArrayList<Mutant> survived_mutants, killed_mutants;
	private static String android_path = "";
	private static String adb_path = "";
	private static String ant_path = "";
	private static String emma_path = "";
	private static String apktool_path = "";
	private static String tool_path = "";
	private int init, n, n_max;

	/**
	 * Constructor of the class
	 * @param directory name of the directory to be analyzed
	 * @param pkg package of the app to be analyzed
	 * @param device device id 
	 * @param report_dir Directory where save the reports
	 */
	public AppManager(String directory, String device, String report_dir,  int init, int n, int n_max){
		this.init = init;
		this.n = n;
	    this.n_max = n_max;
		this.dir = directory;
		setPackage();
		this.device = device;
		this.report_dir = report_dir;
		log = new Logger(report_dir+"/DeviceConfiguration");
		survived_mutants_log = new Logger(report_dir+"/SurvivedMutants");
		killed_mutants_log = new Logger(report_dir+"/KilledMutants");
		tl = new TestManager("com.deep.parameter.optimisation.crest.test", report_dir, "TestFailed");
		loadPath();
	}

	public AppManager(String directory, String device){
		this.dir = directory;
		setPackage();
		this.device = device;
		loadPath();
	}

	private void setPackage(){
		Path original_file = Paths.get(dir+"/AndroidManifest.xml");
		InputStream in;
		String line = null;
		String[] arr;
		try {
			in = Files.newInputStream(original_file);
			BufferedReader reader = new BufferedReader(new InputStreamReader(in));
			while ((line = reader.readLine()) != null){
				if(line.contains("package")){
					arr = line.split("\"");
					this.pkg=arr[1];
					break;
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private String getAppName(){
		Path original_file = Paths.get(dir+"/build.xml");
		InputStream in;
		String line = null;
		String[] arr = null;
		try {
			in = Files.newInputStream(original_file);
			BufferedReader reader = new BufferedReader(new InputStreamReader(in));
			while ((line = reader.readLine()) != null){
				if(line.contains("project name")){
					arr = line.split("\"");
					break;
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr[1];

	}

	/**
	 * Method that allows to setUp the application, ant clean, build.
	 * Instrumentation and installi are necessary for the coverage analysis
	 */
	public void setUp(){
		String output;
		System.out.println("Starting Setup ...");
		cmd = new CommandManager(new ProcessBuilder("find", ".", "-name", "*.apk", "-type", "f", "-delete"));
		output = cmd.executeCommand("SignApk");
		log.writeLog("remove apk SignApk dir", output);
		cmd = new CommandManager(new ProcessBuilder(android_path, "update", "project", "--target", "1", "--path", "./", "--name", dir));
		output = cmd.executeCommand(dir);
		log.writeLog("android update", output);
		this.app_name = getAppName();
		this.apk = app_name+"-instrumented.apk";
		cmd = new CommandManager(new ProcessBuilder(ant_path, "clean"));
		output = cmd.executeCommand(dir);
		log.writeLog("ant clean", output);
		if(!output.contains("SUCCESSFUL")) System.out.println("ant clean FAILED");
		else{
			cmd = new CommandManager(new ProcessBuilder(ant_path, "instrument"));
			output = cmd.executeCommand(dir);
			log.writeLog("ant instrument", output);
			if(!output.contains("SUCCESSFUL")) System.out.println("ant instrument FAILED");
			else {
				cmd = new CommandManager(new ProcessBuilder(ant_path, "installi"));
				output = cmd.executeCommand(dir);
				log.writeLog("ant installi", output);
				if(!output.contains("SUCCESSFUL")) System.out.println("ant installi FAILED");
				else {
					System.out.println("Setup Done");
				}
			}
		}
	}

	/**
	 * Method that allows to reset the app on the device, unistall and install.
	 * @param directory directory of the app
	 * @param mutations if true is a mutant then take the apk from the mutants folder
	 */
	public void resetApp(String directory, boolean mutations){
		String output;
		cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "uninstall", pkg ));
		output = cmd.executeCommand(dir);
		log.writeLog("adb uninstall", output);
		if(mutations){
			cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "install", "-reinstall", "./"+apk));
			output = cmd.executeCommand("mutants");
		} else {
			cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "install", "-reinstall", "./"+directory+"/"+apk));
			output = cmd.executeCommand(dir);
		}
		log.writeLog("adb install", output);
	}

	/**
	 * Method that allows to calculate the coverage
	 */
	public void calculateCoverage(){
		String output,cpu_info;
		String[] cpu_used,memory_used;
		System.out.println("Starting Coverage calculation");
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", app_name+"-instrumented.apk"));
		output = cmd.executeCommand(dir+"/bin");
		log.writeLog("apktool d", output);
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "b", app_name+"-instrumented"));
		output = cmd.executeCommand(dir+"/bin");
		log.writeLog("apktool b", output);
		cmd = new CommandManager(new ProcessBuilder("java", "-jar", "signapk.jar", "certificate.pem", "key.pk8", tool_path+
				"/"+dir+"/bin/"+app_name+"-instrumented"+
				"/dist/"+app_name+"-instrumented.apk", tool_path+"/"+dir+"/bin/"+app_name+"-instrumented"+
						"/dist/"+app_name+".apk"));
		output = cmd.executeCommand("SignApk");
		log.writeLog("Sign apk ", output);
		cmd = new CommandManager(new ProcessBuilder("rm",app_name+"-instrumented.apk"));
		output = cmd.executeCommand(dir+"/bin/"+app_name+"-instrumented/dist");
		cmd = new CommandManager(new ProcessBuilder("mv",app_name+".apk",app_name+"-instrumented.apk"));
		output = cmd.executeCommand(dir+"/bin/"+app_name+"-instrumented/dist");
		resetApp("bin/"+app_name+"-instrumented/dist",false);
		restart();
		long startTime = System.nanoTime();
		tl.executeTest("Original apk");
		long endTime = System.nanoTime();
		cpu_info = getCpuInfo();
		memory_used = getMemInfo().split("\\s+");
		log.writeLog("dumpsys memInfo", memory_used.toString());
		log.writeLog("dumpsys cpuInfo", cpu_info.toString());
		long duration = (endTime - startTime)/1000000;
		cpu_used = cpu_info.split(" ");
		original = new Mutant(apk);
		if(tl.getTestFailed()!=0){
			killed_mutants_log.writeLog("Original apk", original.toString());
		} else {
			original.setExecution_time(duration);
			try{
				original.setCpu_pct(Double.parseDouble(cpu_used[2]));
				original.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
				original.setUser_pct(Double.parseDouble(cpu_used[4]));
				original.setSystem_pct(Double.parseDouble(cpu_used[7]));
			} catch(ArrayIndexOutOfBoundsException e){
				original.setCpu_pct(0);
				original.setCpu_time(0);
				original.setUser_pct(0);
				original.setSystem_pct(0);
			}
			try{
			original.setHeap_size(Long.parseLong(memory_used[7]));
			original.setHeap_alloc(Long.parseLong(memory_used[8]));
			original.setHeap_free(Long.parseLong(memory_used[9]));
			}catch(ArrayIndexOutOfBoundsException e){
				original.setHeap_size(0);
				original.setHeap_alloc(0);
				original.setHeap_free(0);
			}
			survived_mutants_log.writeLog("Original apk", original.toString());
		}
		cmd = new CommandManager(new ProcessBuilder(adb_path, "shell", "am", "broadcast", "-a", "com.qa.emma.COLLECT_COVERAGE"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb broadcast", output);
		cmd = new CommandManager(new ProcessBuilder(adb_path, "push", "/mnt/sdcard/coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb push", output);
		cmd = new CommandManager(new ProcessBuilder(adb_path, "pull", "/mnt/sdcard/coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb pull", output);
		cmd = new CommandManager(new ProcessBuilder("java", "-cp", emma_path, "emma", "report", "-r", "html", "-sourcepath", "src", "-in", "bin/coverage.em,coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("java emma report", output);
		System.out.println("coverage calculated");
	}

	private void restart(){
		String output;
		System.out.println("Device Restarting ...");
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
	}	

	/**
	 * Method that allows to execute the mutation analysis and get the survived and killed mutants
	 * @throws InterruptedException
	 */
	public void mutationAnalysis() throws InterruptedException{
		survived_mutants = new ArrayList<>();
		System.out.println("Starting Mutation Analysis ...");
		String output,cpu_info;
		String[] cpu_used,memory_used;
		String[] apk_mutants;
		Mutant mutant;
		killed_mutants = new ArrayList<>();
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand("mutants");
		log.writeLog("ls", output);
		apk_mutants = output.split("\n");
		for(int i=0;i<apk_mutants.length;i++){
			if(apk_mutants[i].contains(".apk")){
				apk=apk_mutants[i];
				resetApp("mutants",true);
				restart();
				System.out.println("Launching mutant "+apk +" ...");
				long startTime = System.nanoTime();
				tl.executeTest(apk);
				long endTime = System.nanoTime();
				cpu_info = getCpuInfo();
				memory_used = getMemInfo().split("\\s+");
				log.writeLog("dumpsys memInfo", memory_used.toString());
				log.writeLog("dumpsys cpuInfo", cpu_info.toString());
				long duration = (endTime - startTime)/1000000;
				mutant = new Mutant(apk);
				if(tl.getTestFailed()!=0){
					killed_mutants.add(mutant);
					killed_mutants_log.writeLog("Mutant "+(i+1), mutant.getApk_name());
					System.out.println("Killed");
				} else {
					cpu_used = cpu_info.split(" ");
					mutant.setExecution_time(duration);
					try{
						mutant.setCpu_pct(Double.parseDouble(cpu_used[2]));
						mutant.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
						mutant.setUser_pct(Double.parseDouble(cpu_used[4]));
						mutant.setSystem_pct(Double.parseDouble(cpu_used[7]));
					} catch(ArrayIndexOutOfBoundsException e){
						mutant.setCpu_pct(0);
						mutant.setCpu_time(0);
						mutant.setUser_pct(0);
						mutant.setSystem_pct(0);
					}
					try{
					mutant.setHeap_size(Long.parseLong(memory_used[7]));
					mutant.setHeap_alloc(Long.parseLong(memory_used[8]));
					mutant.setHeap_free(Long.parseLong(memory_used[9]));
					} catch(ArrayIndexOutOfBoundsException e){
						mutant.setHeap_size(0);
						mutant.setHeap_alloc(0);
						mutant.setHeap_free(0);
					}
					survived_mutants.add(mutant);
					survived_mutants_log.writeLog("Mutant "+(i+1), mutant.toString());
					System.out.println("Survived");
				}
			}
		}
		System.out.println("Mutation analysis done");
		System.out.println("Mutants Survived: "+survived_mutants.size());
		System.out.println("Mutants Killed: "+killed_mutants.size());
		MutantsAnalyzer ma = new MutantsAnalyzer(survived_mutants,dir, app_name, pkg,report_dir, original, device, init, n, n_max);
		log.closeLogger();
		survived_mutants_log.closeLogger();
		killed_mutants_log.closeLogger();
		ma.generateSmaliFile();
	}

	/**
	 * Method that allows to get cpu information from the device
	 * @return cpu information
	 */
	public String getCpuInfo(){
		String output;
		String cpu_info = "";
		CommandManager cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "dumpsys", "cpuinfo", pkg));
		output = cmd.executeCommand(dir);
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
	public String getMemInfo(){
		String output;
		String mem_info = "";
		CommandManager 	cmd = new CommandManager(new ProcessBuilder(adb_path, "-s", device, "shell", "dumpsys", "meminfo", pkg));
		output = cmd.executeCommand(dir);
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
	 * This method loads the path from the config file
	 */
	private void loadPath(){
		Properties prop = new Properties();
		InputStream input = null;
		try {
			input = new FileInputStream("config.properties");
			prop.load(input);		
			apktool_path = prop.getProperty("apktool_path");
			android_path = prop.getProperty("android_path");
			adb_path = prop.getProperty("adb_path");
			ant_path = prop.getProperty("ant_path");
			emma_path = prop.getProperty("emma_path");
			tool_path = prop.getProperty("tool_path");
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
