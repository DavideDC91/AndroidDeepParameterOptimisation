package com.deep.parameter.optimisation.crest.manager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import com.deep.parameter.optimisation.crest.beans.Alteration;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;
import com.deep.parameter.optimisation.crest.utilities.ReportGenerator;

/**
 * This Class Allows to analyze the mutants survived and gets the difference with the Original apk
 * @author Davide
 *
 */
public class MutantsAnalyzer {

	private String dir, pkg, report_dir, original_path;
	private ArrayList<String> files;
	private static final String apktool_path = "/usr/local/Cellar/apktool/2.0.3/bin/apktool";
	private ArrayList<Mutant> mutants;
	private Logger log;
	private CommandManager cmd;

	/**
	 * Constructor of the class
	 * @param m survived mutants
	 * @param directory directory of the original apk
	 * @param pkg package of the app
	 * @param report_dir path to the reports directory
	 */
	public MutantsAnalyzer(ArrayList<Mutant> m, String directory, String pkg, String report_dir){
		this.mutants = m;
		this.dir = directory;
		this.pkg = pkg;
		this.report_dir = report_dir;
		log = new Logger(report_dir+"/AnalyzerLogger");
		String[] pkg_splitted = this.pkg.split("\\.");
		original_path = dir+"/bin/"+dir+"-instrumented/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			original_path=original_path + pkg_splitted[i]+"/";
		}
		files = new ArrayList<>();
	}

	/**
	 * This method allows to decode the apks and get the smali files
	 */
	public void generateSmaliFile(){
		String output;
		cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", dir+"-instrumented.apk"));
		output = cmd.executeCommand(dir+"/bin");
		log.writeLog("apktool d", output);
		cmd = new CommandManager(new ProcessBuilder("ls"));
		output = cmd.executeCommand(original_path);
		String[] lines = output.split(System.getProperty("line.separator"));
		for(int i=0; i<lines.length;i++){
			//if(!lines[i].contains("$")){
				files.add(lines[i]);
			//}
		}
		for(int j=0;j<mutants.size();j++){
			cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", mutants.get(j).getApk_name()));
			output = cmd.executeCommand("mutants");
			log.writeLog("apktool d "+mutants.get(j).getApk_name(), output);
			mutants.set(j, findDiff(mutants.get(j)));
		}
		ReportGenerator rg = new ReportGenerator(mutants);
		rg.generateHtmlReport(report_dir);
	}

	/**
	 * This method allows to find the differences between the mutants and the orginal apk
	 * @param m mutant to analyze
	 * @return mutant with alteration saved
	 */
	public Mutant findDiff(Mutant m){
		String[] pkg_splitted = this.pkg.split("\\.");
		String path = "mutants/"+m.getApk_name().replace(".apk", "")+"/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			path=path + pkg_splitted[i]+"/";
		}
		for(int j=0;j<files.size();j++){
			Path mutant_path = Paths.get("./"+path+"/"+files.get(j));
			Path original_path = Paths.get(this.original_path+"/"+files.get(j));
			try {
				InputStream in = Files.newInputStream(mutant_path);
				InputStream original_in = Files.newInputStream(original_path);
				BufferedReader reader = new BufferedReader(new InputStreamReader(in));
				BufferedReader original_reader = new BufferedReader(new InputStreamReader(original_in));
				String line = null;
				String original_line = null;
				long line_number=0;
				while (((line = reader.readLine()) != null)&&(original_line = original_reader.readLine()) != null) {
					line_number++;
					if(!line.equals(original_line)){
						m.addAlteration(new Alteration(files.get(j), line, original_line, line_number));
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return m;
	}

}
