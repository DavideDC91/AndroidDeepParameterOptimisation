package com.deep.parameter.optimisation.crest;
import java.io.*;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;


public class Launcher {
	private static FileOutputStream testReport;
	private static long testFailed=0;
	private static String[] memoryUsed,cpuUsed;
	private static String workingDirectory,pkg,mainActivity,device;
	private static final String androidPath = "/Users/Davide/Library/";
	public static void main(String[] args) throws Exception {
		/**
		File log = new File("log");
		FileWriter fileWriter = new FileWriter(log);
		fileWriter.append("***************************** log file *****************************\n");	
		fileWriter.flush();

		workingDirectory = args[0];
		pkg = args[1];
		//mainActivity = args[2];
		device = args[3];
		Launcher obj = new Launcher();
	
		ProcessBuilder pb = new ProcessBuilder(androidPath+"Android/sdk/tools/android", "update", "project", "--target", "1", "--path", "./", "--name", workingDirectory);
		String output = obj.executeCommand(pb, workingDirectory);
		fileWriter.append("\n**** android udpate ****\n"+output);
		fileWriter.flush();
		
		pb = new ProcessBuilder("/usr/local/apache-ant/bin/ant", "debug");
		output = obj.executeCommand(pb, workingDirectory);
		fileWriter.append("\n**** ant debug ****\n"+output);
		fileWriter.flush();
		
		pb = new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "install", "-reinstall", "./bin/"+workingDirectory+"-debug.apk");
		output = obj.executeCommand(pb, workingDirectory);
		fileWriter.append("\n**** adb install ****\n"+output);
		fileWriter.flush();
		
		//pb = new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "shell", "am", "start", "-n", pkg+"/."+ mainActivity);
		//output = obj.executeCommand(pb, workingDirectory, log);
		//System.out.println(output);
		
	
		testReport = new FileOutputStream("TestFail");
		List<Class<?>> classes = ClassFinder.find("com.deep.parameter.optimisation.crest.test");
		for (Class testCase : classes)
		{
			runTestCase(testCase);
		}
		
		pb = new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "shell", "dumpsys", "meminfo", pkg);
		output = obj.executeCommand(pb, workingDirectory);
		fileWriter.append("\n**** adb dumpsys meminfo ****\n"+output);
		fileWriter.flush();
		memoryUsed = output.split("\\r?\\n");
		
		pb = new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", device, "shell", "dumpsys", "cpuinfo", pkg);
		output = obj.executeCommand(pb, workingDirectory);
		fileWriter.append("\n**** adb dumpsys cpuinfo ****\n"+output);
		fileWriter.flush();
		cpuUsed = output.split("\\r?\\n");
		cpuUsed = cpuUsed[2].split(" ");

		System.out.println("Failed Test: "+testFailed +"\n");
		System.out.println(cpuUsed[3].split("/")[0]+" ms "+cpuUsed[4]+" User "+cpuUsed[7]+" System\n");

		System.out.println(memoryUsed[0]+"\n"+memoryUsed[4]+"\n"+memoryUsed[5]+"\n"+memoryUsed[6]+"\n"+memoryUsed[7]+"\n");
		fileWriter.close();

		List<Class<?>> classes = ClassFinder.find("com.deep.parameter.optimisation.crest.test");
		for (Class testCase : classes)
		{
			runTestCase(testCase);
		}
	**/
		AppManager dc= new AppManager("android-timetracker", "com.markuspage.android.atimetracker", "0ac20634");
		dc.setUp();
		dc.calculateCoverage();
	}

	

}
