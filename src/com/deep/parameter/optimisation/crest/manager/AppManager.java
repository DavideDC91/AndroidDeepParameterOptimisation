package com.deep.parameter.optimisation.crest.manager;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;

/**
 * This class Allows to manage the interaction of the applications with the device
 * and allows to execute the original apk, mutants and get informations about their execution
 * @author Davide
 *
 */
public class AppManager {
	private String dir, apk, pkg, device, report_dir;
	private Logger log, survived_mutants_log, killed_mutants_log;
	private CommandManager cmd;
	private TestManager tl;
	private Mutant original;
	private ArrayList<Mutant> survived_mutants, killed_mutants;
	private static final String androidPath = "/Users/Davide/Library/";

	/**
	 * Constructor of the class
	 * @param directory name of the directory to be analyzed
	 * @param pkg package of the app to be analyzed
	 * @param device device id 
	 * @param report_dir Directory where save the reports
	 */
	public AppManager(String directory, String pkg, String device, String report_dir){
		this.dir = directory;
		this.apk = directory+"-instrumented.apk";
		this.pkg = pkg;
		this.device = device;
		this.report_dir = report_dir;
		log = new Logger(report_dir+"/DeviceConfiguration");
		survived_mutants_log = new Logger(report_dir+"/SurvivedMutants");
		killed_mutants_log = new Logger(report_dir+"/KilledMutants");
		tl = new TestManager("com.deep.parameter.optimisation.crest.test", report_dir);
	}

	/**
	 * Method that allows to setUp the application, ant clean, build.
	 * Instrumentation and installi are necessary for the coverage analysis
	 */
	public void setUp(){
		String output;
		cmd = new CommandManager(new ProcessBuilder("/usr/local/apache-ant/bin/ant", "clean"));
		output = cmd.executeCommand(dir);
		log.writeLog("ant clean", output);
		if(!output.contains("SUCCESSFUL")) System.out.println("ant clean FAILED");
		else{
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/tools/android", "update", "project", "--target", "1", "--path", "./", "--name", dir));
			output = cmd.executeCommand(dir);
			log.writeLog("android update", output);
			cmd = new CommandManager(new ProcessBuilder("/usr/local/apache-ant/bin/ant", "instrument"));
			output = cmd.executeCommand(dir);
			log.writeLog("ant instrument", output);
			if(!output.contains("SUCCESSFUL")) System.out.println("ant instrument FAILED");
			else {
				cmd = new CommandManager(new ProcessBuilder("/usr/local/apache-ant/bin/ant", "installi"));
				output = cmd.executeCommand(dir);
				log.writeLog("ant installi", output);
				if(!output.contains("SUCCESSFUL")) System.out.println("ant installi FAILED");
				else {
					System.out.println("setUp Done");
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
		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "uninstall", pkg ));
		output = cmd.executeCommand(dir);
		log.writeLog("adb uninstall", output);
		if(mutations){
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "install", "-reinstall", "./"+apk));
			output = cmd.executeCommand("mutants");
		} else {
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "install", "-reinstall", "./"+directory+"/"+apk));
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
		resetApp("bin",false);
		tl.executeTest("Original apk");
		cpu_info = getCpuInfo();
		memory_used = getMemInfo().split("\\s+");
		cpu_used = cpu_info.split(" ");
		original = new Mutant(apk);
		original.setCpu_pct(Double.parseDouble(cpu_used[2]));
		original.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
		original.setUser_pct(Double.parseDouble(cpu_used[4]));
		original.setSystem_pct(Double.parseDouble(cpu_used[7]));
		original.setHeap_size(Long.parseLong(memory_used[7]));
		original.setHeap_alloc(Long.parseLong(memory_used[8]));
		original.setHeap_free(Long.parseLong(memory_used[9]));
		if(tl.getTestFailed()!=0){
			killed_mutants_log.writeLog("Original apk", original.toString());
		} else {
			survived_mutants_log.writeLog("Original apk", original.toString());
		}
		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "shell", "am", "broadcast", "-a", "com.qa.emma.COLLECT_COVERAGE"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb broadcast", output);
		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "push", "/mnt/sdcard/coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb push", output);
		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "pull", "/mnt/sdcard/coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("adb pull", output);
		cmd = new CommandManager(new ProcessBuilder("java", "-cp", androidPath+"Android/sdk//tools/lib/emma.jar", "emma", "report", "-r", "html", "-sourcepath", "src", "-in", "bin/coverage.em,coverage.ec"));
		output = cmd.executeCommand(dir);
		log.writeLog("java emma report", output);
		System.out.println("coverage calculated");
	}

	/**
	 * Method that allows to execute the mutation analysis and get the survived and killed mutants
	 * @throws InterruptedException
	 */
	public void mutationAnalysis() throws InterruptedException{
		String output,cpu_info;
		String[] cpu_used,memory_used;
		String[] apk_mutants;
		Mutant mutant;
		survived_mutants = new ArrayList<>();
		killed_mutants = new ArrayList<>();
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand("mutants");
		log.writeLog("ls", output);
		apk_mutants = output.split("\n");
		for(int i=0;i<apk_mutants.length;i++){
			if(apk_mutants[i].contains(".apk")){
				apk=apk_mutants[i];
				resetApp("mutants",true);
				TimeUnit.SECONDS.sleep(10);
				long startTime = System.nanoTime();
				tl.executeTest(apk);
				long endTime = System.nanoTime();
				cpu_info = getCpuInfo();
				memory_used = getMemInfo().split("\\s+");
				long duration = (endTime - startTime)/1000000;
				mutant = new Mutant(apk);
				if(tl.getTestFailed()!=0){
					killed_mutants.add(mutant);
					killed_mutants_log.writeLog("Mutant "+(i+1), mutant.getApk_name());
				} else {
					cpu_used = cpu_info.split(" ");
					mutant.setExecution_time(duration);
					mutant.setCpu_pct(Double.parseDouble(cpu_used[2]));
					mutant.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
					mutant.setUser_pct(Double.parseDouble(cpu_used[4]));
					mutant.setSystem_pct(Double.parseDouble(cpu_used[7]));
					mutant.setHeap_size(Long.parseLong(memory_used[7]));
					mutant.setHeap_alloc(Long.parseLong(memory_used[8]));
					mutant.setHeap_free(Long.parseLong(memory_used[9]));
					survived_mutants.add(mutant);
					survived_mutants_log.writeLog("Mutant "+(i+1), mutant.toString());
				}
			}
		}
		System.out.println("mutation analysis done");
		MutantsAnalyzer ma = new MutantsAnalyzer(survived_mutants,dir, pkg,report_dir );
		ma.generateSmaliFile();
	}

	/**
	 * Method that allows to get cpu information from the device
	 * @return cpu information
	 */
	private String getCpuInfo(){
		CommandManager cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "shell", "dumpsys", "cpuinfo", pkg));
		String output;
		String cpu_info = "";
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
		CommandManager 	cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "shell", "dumpsys", "meminfo", pkg));
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

}
