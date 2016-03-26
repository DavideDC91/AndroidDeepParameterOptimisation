package com.deep.parameter.optimisation.crest.launcher;
import java.io.*;
import java.lang.ProcessBuilder.Redirect;
import static java.nio.file.StandardOpenOption.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

import com.deep.parameter.optimisation.crest.beans.Alteration;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.manager.AppManager;
import com.deep.parameter.optimisation.crest.manager.CommandManager;
import com.deep.parameter.optimisation.crest.manager.MutantsAnalyzer;
import com.deep.parameter.optimisation.crest.utilities.ReportGenerator;


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
		//AppManager dc= new AppManager("android-timetracker", "com.markuspage.android.atimetracker", "0ac20634");
		//dc.setUp();
		//dc.calculateCoverage();
		CommandManager cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", "0ac20634", "shell", "dumpsys", "cpuinfo", "com.markuspage.android.atimetracker"));
		String output = cmd.executeCommand("android-timetracker");
		//System.out.println(output);
		/**

		String[] lines = output.split(System.getProperty("line.separator"));
		String cpuInfo = "";
		for(int i=0; i<lines.length;i++){
			if(lines[i].contains("com.markuspage.android.atimetracker")){
				cpuInfo = lines[i];
			}
		}
		System.out.println(cpuInfo);
		cpuUsed = cpuInfo.split(" ");
		System.out.println(cpuUsed[2] +"AAAAA" + cpuUsed[3].split("/")[0]+" ms "+cpuUsed[4]+" User "+cpuUsed[7]+" System\n");

		cmd = new CommandManager(new ProcessBuilder(androidPath+"Android/sdk/platform-tools/adb", "-s", "0ac20634", "shell", "dumpsys", "meminfo", "com.markuspage.android.atimetracker"));
		output = cmd.executeCommand("android-timetracker");
		String[] lines = output.split(System.getProperty("line.separator"));
		String memInfo = "";
		for(int i=0; i<lines.length;i++){
			if(lines[i].contains("Native Heap")){
				memInfo = lines[i];
			}
		}
		System.out.println(output);
		System.out.println(memInfo);
		memoryUsed = memInfo.split("\\s+");;
		System.out.println(memoryUsed[7]+memoryUsed[8]+memoryUsed[9]);
		 **/
		//AppManager dc= new AppManager("android-timetracker", "com.markuspage.android.atimetracker", "0ac20634");
		//dc.setUp();
		//dc.calculateCoverage();
		//dc.mutationAnalysis();
		/**
		Path file = Paths.get("./CSVExporter.smali");
	    Path p = Paths.get("./aaa.smali");
		try (InputStream in = Files.newInputStream(file);
				BufferedReader reader =
						new BufferedReader(new InputStreamReader(in))) {
			String line = null;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
				String s = line+"\n";
			    byte data[] = s.getBytes();
				try (OutputStream out = new BufferedOutputStream(
					      Files.newOutputStream(p, CREATE, APPEND))) {
					      out.write(data, 0, data.length);
					    } catch (IOException x) {
					      System.err.println(x);
					    }
			}
		} catch (IOException x) {
			System.err.println(x);
		}
	    **/
		DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH.mm.ss");
		Date date = new Date();
		String report_dir_name = "Report " + dateFormat.format(date);
		File reports_dir = new File("Reports");
		reports_dir.mkdir();
		File report_dir = new File("Reports/"+report_dir_name);
		report_dir.mkdirs();
		
		AppManager dc= new AppManager("android-timetracker", "com.markuspage.android.atimetracker", "0ac20634", "Reports/"+report_dir_name);
		dc.setUp();
		dc.calculateCoverage();
		dc.mutationAnalysis();
		/**
		ArrayList<Mutant> m = new ArrayList<>();
		Mutant m1 = new Mutant("android-timetracker-instrumented_2.apk");
		m1.setCpu_time(2000);
		m1.setHeap_alloc(2000);
		m1.setCpu_pct(2000);
		m1.setExecution_time(2000);
		m1.setHeap_free(2000);
		m1.setHeap_size(2000);
		m1.setSystem_pct(100);
		m1.setUser_pct(100);
		m1.addAlteration(new Alteration("CSVExporter.smali", "const/4 v0, 0x6", "const/4 v0, 0x5", 18));
		m1.addAlteration(new Alteration("CSVExporter.smali", "const/4 v0, 0x6", "const/4 v0, 0x5", 12228));
		m.add(m1);
		m1 = new Mutant("android-timetracker-instrumented_4676.apk");
		m1.setCpu_time(3000);
		m1.setHeap_alloc(3000);
		m1.setCpu_pct(3000);
		m1.setExecution_time(3000);
		m1.setHeap_free(3000);
		m1.setHeap_size(3000);
		m1.setSystem_pct(3000);
		m1.setUser_pct(3000);
		m1.addAlteration(new Alteration("CSVExporter.smali", "const/4 v0, 0x6", "const/4 v0, 0x5", 200));
		m.add(m1);
		//MutantsAnalyzer ma = new MutantsAnalyzer(m,"android-timetracker", "com.markuspage.android.atimetracker","Reports/"+report_dir_name );
		//ma.generateSmaliFile();
		**/
		
		
	}



}
