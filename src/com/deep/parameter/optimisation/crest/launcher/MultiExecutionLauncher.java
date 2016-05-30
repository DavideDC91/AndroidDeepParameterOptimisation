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
	private static int increment = 1; // increment value per Systematic analysis
	private static int maximum = 80; // maximum value per Systematic

	// STOCHASTIC PARAMETERS

	private static int cycles = 10; // number of cycles to do
	private static int max = 80; // maximum value per Stochastic Analysis

	public static void main(String[] args) throws Exception {
		loadPath();

		CommandManager cmd = new CommandManager(new ProcessBuilder("find", ".", "-name", "*.apk", "-type", "f", "-delete"));
		String output = cmd.executeCommand("SignApk");


		Thread timetracker_thread = new Thread("android-timetracker Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "android-timetracker"; // app dir
				String device = "0a2aa61a"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.timetracker";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};

		Thread fillup_thread = new Thread("FillUp Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "FillUp"; // app dir
				String device = "0a6996b3"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.fillup";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};
		
		Thread worldclock_thread = new Thread("WorldClockActivity Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "WorldClockActivity"; // app dir
				String device = "0a3500fb"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.worldclock";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};

		Thread pmtext_thread = new Thread("pmTextEdit Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "pmTextEdit"; // app dir
				String device = "091f4245"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.pmtextedit";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};
		
		Thread gmdice_thread = new Thread("gmdice Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "gmdice"; // app dir
				String device = "0a2aae66"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.gmdice";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};
		
		Thread sandwichroulette_thread = new Thread("sandwichroulette Thread") {
			public void run(){
				System.out.println("running: " + getName());
				String dir= "sandwichroulette"; // app dir
				String device = "0a2a2496"; // device code
				String test_pkg= "com.deep.parameter.optimisation.crest.test.sandwichroulette";
				boolean only_mutants = true;
				int approach = 0;
				SingleLaunch(dir,device,test_pkg, only_mutants, approach);
			}
		};
		                                                                                     
		timetracker_thread.start();
		fillup_thread.start();
		pmtext_thread.start();                                                                                           
		worldclock_thread.start();
		sandwichroulette_thread.start();
		gmdice_thread.start();
	}

	private static void SingleLaunch(String dir,String device,String test_pkg, boolean only_mutants, int approach){
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
				try {
					dc.mutationAnalysis(only_mutants,approach);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
