package com.deep.parameter.optimisation.crest.launcher;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.deep.parameter.optimisation.crest.manager.AppManager;

/**
 * The main class of the project allows to launch it
 * @author Davide
 *
 */
public class Launcher {
	public static void main(String[] args) throws Exception {
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
		}
}
