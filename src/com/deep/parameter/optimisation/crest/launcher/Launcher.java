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
public class Launcher {
	private static String adb_path = "";
	public static void main(String[] args) throws Exception {
		loadPath();
		
		// CONFIGURABLE PARAMETERS
		
		String dir= "sandwichroulette"; // app dir
		String device = "0a2a2496"; // device code
		String test_pkg= "com.deep.parameter.optimisation.crest.test.sandwichroulette";
		boolean only_mutants = false; // Set on true to execute only mutants without any analysis
		boolean systematic_analysis = false; // Set on true for systematic analysis on false for stochastic analysis
	
		// SYSTEMATIC PARAMETERS
		
		int init = 1; // Starting value per Systematic analysis
		int increment = 3; // increment value per Systematic analysis
		int maximum = 10; // maximum value per Systematic
		
		// STOCHASTIC PARAMETERS
		
		int cycles = 3; // number of cycles to do
		int max = 80; // maximum value per Stochastic Analysis

		CommandManager cmd = new CommandManager(new ProcessBuilder("find", ".", "-name", "*.apk", "-type", "f", "-delete"));
		String output = cmd.executeCommand("SignApk");
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand();
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
