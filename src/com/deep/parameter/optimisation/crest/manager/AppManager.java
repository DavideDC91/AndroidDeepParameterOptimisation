package com.deep.parameter.optimisation.crest.manager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;

public class AppManager {

	private String dir, apk, pkg, device;
	private Logger log, survived_mutants_log, killed_mutants_log;
	private CommandManager cmd;
	private TestManager tl;
	private Mutant original;
	private ArrayList<Mutant> survived_mutants, killed_mutants;
	private static final String androidPath = "/Users/Davide/Library/";

	public AppManager(String directory, String pkg, String device){
		this.dir = directory;
		this.apk = directory+"-instrumented.apk";
		this.pkg = pkg;
		this.device = device;
		log = new Logger("DeviceConfiguration");
		survived_mutants_log = new Logger("SurvivedMutants");
		killed_mutants_log = new Logger("KilledMutants");
		tl = new TestManager("com.deep.parameter.optimisation.crest.test");
	}

	public void setUp(){
		String output;
		try {
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
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void resetApp(String directory){
		String output;
		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "uninstall", pkg ));
		try {
			output = cmd.executeCommand(dir);
			log.writeLog("adb uninstall", output);
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "install", "-reinstall", "./"+directory+"/"+apk));
			output = cmd.executeCommand(dir);
			log.writeLog("adb install", output);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void calculateCoverage(){
		String output,cpu_info;
		String[] cpu_used,memory_used;
		try {
			resetApp("bin");
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
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void mutationAnalysis() throws InterruptedException{
		String output,cpu_info;
		String[] cpu_used,memory_used;
		String[] apk_mutants;
		Mutant mutant;
		survived_mutants = new ArrayList<>();
		killed_mutants = new ArrayList<>();
		try {
			cmd = new CommandManager(new ProcessBuilder("ls"));
			output = cmd.executeCommand(dir+"/mutants");
			log.writeLog("ls", output);
			apk_mutants = output.split("\n");
			for(int i=0;i<apk_mutants.length;i++){
				apk=apk_mutants[i];
				resetApp("mutants");
				TimeUnit.SECONDS.sleep(10);	
				tl.executeTest(apk);
				cpu_info = getCpuInfo();
				memory_used = getMemInfo().split("\\s+");
				cpu_used = cpu_info.split(" ");
				mutant = new Mutant(apk);
				mutant.setCpu_pct(Double.parseDouble(cpu_used[2]));
				mutant.setCpu_time(Long.parseLong(cpu_used[3].split("/")[0]));
				mutant.setUser_pct(Double.parseDouble(cpu_used[4]));
				mutant.setSystem_pct(Double.parseDouble(cpu_used[7]));
				mutant.setHeap_size(Long.parseLong(memory_used[7]));
				mutant.setHeap_alloc(Long.parseLong(memory_used[8]));
				mutant.setHeap_free(Long.parseLong(memory_used[9]));
				if(tl.getTestFailed()!=0){
					killed_mutants.add(mutant);
					killed_mutants_log.writeLog("Mutant "+(i+1), mutant.toString());
				} else {
					survived_mutants.add(mutant);
					survived_mutants_log.writeLog("Mutant "+(i+1), mutant.toString());
				}
			}
			System.out.println("mutation analysis done");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private String getCpuInfo(){
		CommandManager cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", "0ac20634", "shell", "dumpsys", "cpuinfo", "com.markuspage.android.atimetracker"));
		String output;
		String cpu_info = "";
		try {
			output = cmd.executeCommand(dir);
			log.writeLog("dumpsys cpuinfo", output);
			String[] lines = output.split(System.getProperty("line.separator"));

			for(int i=0; i<lines.length;i++){
				if(lines[i].contains(pkg)){
					cpu_info = lines[i];
					break;
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		cpu_info = cpu_info.replace("%", "");
		return cpu_info;
	}

	private String getMemInfo(){
		CommandManager 	cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", "0ac20634", "shell", "dumpsys", "meminfo", "com.markuspage.android.atimetracker"));
		String output;
		String mem_info = "";
		try {
			output = cmd.executeCommand(dir);
			log.writeLog("dumpsys memInfo", output);
			String[] lines = output.split(System.getProperty("line.separator"));
			for(int i=0; i<lines.length;i++){
				if(lines[i].contains("Native Heap")){
					mem_info = lines[i];
					break;
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mem_info;
	}

}
