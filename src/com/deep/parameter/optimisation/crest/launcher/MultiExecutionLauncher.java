package com.deep.parameter.optimisation.crest.launcher;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import com.deep.parameter.optimisation.crest.manager.AppManager;
import com.deep.parameter.optimisation.crest.manager.CommandManager;

import sun.util.logging.resources.logging;

/**
 * The main class of the project allows to launch it
 * @author Davide
 *
 */
public class MultiExecutionLauncher {
	private static String adb_path = "";

	// CONFIGURABLE PARAMETERS

	//private static boolean only_mutants = false; // Set on true to execute only mutants without any analysis
	//private static boolean systematic_analysis = false; // Set on true for systematic analysis on false for stochastic analysis

	// SYSTEMATIC PARAMETERS

	private static int init = 1; // Starting value per Systematic analysis
	private static int increment = 3; // increment value per Systematic analysis
	private static int maximum = 10; // maximum value per Systematic

	// STOCHASTIC PARAMETERS

	private static int cycles = 3; // number of cycles to do
	private static int max = 80; // maximum value per Stochastic Analysis

	public static void main(String[] args) throws Exception {
		loadPath();

		CommandManager cmd = new CommandManager(new ProcessBuilder("find", ".", "-name", "*.apk", "-type", "f", "-delete"));
		String output = cmd.executeCommand("SignApk");


		Thread thread = new Thread("android-timetracker Thread") {
			public void run(){
				System.out.println("run by: " + getName());
				String dir= "android-timetracker"; // app dir
				String device = "0a2aa61a"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.timetracker";
				boolean only_mutants = true;
				boolean systematic_analysis = false;
				SingleLaunch(dir,device,test_pkg, only_mutants, systematic_analysis);
			}
		};

		Thread thread2 = new Thread("FillUp Thread") {
			public void run(){
				System.out.println("run by: " + getName());
				String dir= "FillUp"; // app dir
				String device = "0a6996b3"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.fillup";
				boolean only_mutants = true;
				boolean systematic_analysis = false;
				SingleLaunch(dir,device,test_pkg, only_mutants, systematic_analysis);
			}
		};
		
		Thread thread3 = new Thread("WorldClockActivity Thread") {
			public void run(){
				System.out.println("run by: " + getName());
				String dir= "WorldClockActivity"; // app dir
				String device = "0a3500fb"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.worldclock";
				boolean only_mutants = true;
				boolean systematic_analysis = false;
				SingleLaunch(dir,device,test_pkg, only_mutants, systematic_analysis);
			}
		};

		Thread thread4 = new Thread("pmTextEdit Thread") {
			public void run(){
				System.out.println("run by: " + getName());
				String dir= "pmTextEdit"; // app dir
				String device = "091f4245"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.pmtextedit";
				boolean only_mutants = true;
				boolean systematic_analysis = false;
				SingleLaunch(dir,device,test_pkg, only_mutants, systematic_analysis);
			}
		};
		
		thread.start();
		thread2.start();
		thread3.start();
		//thread4.start();

	}

	private static void SingleLaunch(String dir,String device,String test_pkg, boolean only_mutants, boolean systematic_analysis){
		CommandManager cmd = new CommandManager(new ProcessBuilder("ls"));
		String output = cmd.executeCommand();
		if(!output.contains(dir)){
			System.out.println("Directory "+dir+" not found");
		} else {
			cmd = new CommandManager(new ProcessBuilder(adb_path, "devices"));
			output = cmd.executeCommand(dir);
			if(!output.contains(device)){
				System.out.println("Device "+device+" not connected");
			} else {
				DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy HH.mm.ss");
				Date date = new Date();
				String report_dir_name = dir+" Report " + dateFormat.format(date);
				File reports_dir = new File("Reports");
				reports_dir.mkdir();
				File report_dir = new File("Reports/"+report_dir_name);
				report_dir.mkdirs();
				AppManager dc= new AppManager(dir, device, "Reports/"+report_dir_name, init, increment, maximum, cycles, max, test_pkg);
				dc.setUp();
				dc.calculateCoverage();
				//dc.mutationAnalysis(only_mutants,systematic_analysis);
			}
		} 
	}

	/**
	 * This method loads the path from the config file
	 */
	private static void loadPath(){
		Properties prop = new Properties();
		InputStream input = null;
		try {
			input = new FileInputStream("config.properties");
			prop.load(input);		
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
