package com.deep.parameter.optimisation.crest.manager;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

import com.deep.parameter.optimisation.crest.beans.Mutant;
import com.deep.parameter.optimisation.crest.utilities.Logger;

public class MutantsAnalyzer {

	private String dir, pkg, report_dir, original_path;
	private ArrayList<String> files;
	private static final String apktool_path = "/usr/local/Cellar/apktool/2.0.3/bin/apktool";
	private ArrayList<Mutant> mutants;
	private Logger log;
	private CommandManager cmd;
	
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
	
	public void generateSmaliFile(){
		String output;
		try {
			cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", dir+"-instrumented.apk"));
			output = cmd.executeCommand(dir+"/bin");
			log.writeLog("apktool d", output);
			for(int j=0;j<mutants.size();j++){
				cmd = new CommandManager(new ProcessBuilder(apktool_path, "-f", "d", mutants.get(j).getApk_name()));
				output = cmd.executeCommand("mutants");
				log.writeLog("apktool d "+mutants.get(j).getApk_name(), output);
			}
			cmd = new CommandManager(new ProcessBuilder("ls"));
			output = cmd.executeCommand(original_path);
			String[] lines = output.split(System.getProperty("line.separator"));
			for(int i=0; i<lines.length;i++){
				if(!lines[i].contains("$")){
					files.add(lines[i]);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public BufferedReader getSmaliFile(){
		return null;
	}
	
	
}
