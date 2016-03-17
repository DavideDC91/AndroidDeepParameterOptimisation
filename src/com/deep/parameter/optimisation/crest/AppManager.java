package com.deep.parameter.optimisation.crest;

import java.io.IOException;

public class AppManager {

	private String dir, apk, pkg, device;
	private Logger log;
	private CommandManager cmd;
	private static final String androidPath = "/Users/Davide/Library/";

	public AppManager(String directory, String pkg, String device){
		this.dir = directory;
		this.apk = directory+"-instrumented.apk";
		this.pkg = pkg;
		this.device = device;
		log = new Logger("DeviceConfiguration");
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
	
	public void calculateCoverage(){
		String output;
		try {
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "uninstall", pkg ));
			output = cmd.executeCommand(dir);
			log.writeLog("adb uninstall", output);
			cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "install", "-reinstall", "./bin/"+apk));
			output = cmd.executeCommand(dir);
			log.writeLog("adb install", output);
			TestManager tl = new TestManager("com.deep.parameter.optimisation.crest.test");
			tl.executeTest("Original apk");
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
}
