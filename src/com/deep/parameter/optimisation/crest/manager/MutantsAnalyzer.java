package com.deep.parameter.optimisation.crest.manager;

import static java.nio.file.StandardOpenOption.*;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Properties;

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
	private static String apktool_path = "";
	private ArrayList<Mutant> mutants;
	private Logger log;
	private CommandManager cmd;
	private Mutant original;

	/**
	 * Constructor of the class
	 * @param m survived mutants
	 * @param directory directory of the original apk
	 * @param pkg package of the app
	 * @param report_dir path to the reports directory
	 */
	public MutantsAnalyzer(ArrayList<Mutant> m, String directory, String pkg, String report_dir, Mutant original){
		this.mutants = m;
		this.dir = directory;
		this.pkg = pkg;
		this.report_dir = report_dir;
		this.original = original;
		log = new Logger(report_dir+"/AnalyzerLogger");
		String[] pkg_splitted = this.pkg.split("\\.");
		original_path = dir+"/bin/"+dir+"-instrumented/smali/";
		for(int i=0;i<pkg_splitted.length;i++){
			original_path=original_path + pkg_splitted[i]+"/";
		}
		files = new ArrayList<>();
		loadPath();
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
		alterateOriginal();
		//ReportGenerator rg = new ReportGenerator(mutants, original);
		//rg.generateHtmlReport(report_dir);
		System.out.println("Report generated");
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
						String alteration_type= null;
						if(line.contains("const")) alteration_type= "ICR";
						else if(((line.contains("if-nez"))||(line.contains("if-eqz")))&&((original_line.contains("if-nez"))||(original_line.contains("if-eqz")))) alteration_type= "LCR";
						else if((line.contains("if-eq"))||(line.contains("if-ne"))||(line.contains("if-lt"))||(line.contains("if-ge"))||(line.contains("if-gt"))||(line.contains("if-le"))) alteration_type= "ROR";
						else if((line.contains("add-"))||(line.contains("rsub-"))||(line.contains("sub-"))||(line.contains("div-"))||(line.contains("mul-"))||(line.contains("rem-"))) alteration_type= "AOR";
						else if(line.contains("not-")||(line.contains("neg-"))) alteration_type= "UOI";
						else if(line.contains("return")) alteration_type= "RVR";
						m.addAlteration(new Alteration(files.get(j), line, original_line, line_number,alteration_type));
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return m;
	}

	private void alterateOriginal(){
		ArrayList<Alteration> alts = new ArrayList<>();
		for(int j=0;j<mutants.size();j++){
			alts.addAll(mutants.get(j).getAllAlteration());
		}
		Collections.sort(alts);
		for(int i=0;i<files.size();i++){
			for(int z=0;z<alts.size();z++){
				if(alts.get(z).getFile().equals(files.get(i))){
					try{
						Path new_file = Paths.get(this.original_path+"/new_file.smali");
						Path original_file = Paths.get(this.original_path+"/"+files.get(i));
						InputStream in = Files.newInputStream(original_file);
						BufferedReader reader = new BufferedReader(new InputStreamReader(in));
						OutputStream out = new BufferedOutputStream(Files.newOutputStream(new_file, CREATE));
						String line = null;
						long line_number=0;
						System.out.println(alts.get(z).getFile());
						while ((line = reader.readLine()) != null){
							line_number++;
							line=line+"\n";
							byte data[] = line.getBytes();
							out.write(data, 0, data.length);
							out.flush();
						}
						out.close();
						System.out.println(line_number);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

	/**
	 * This method loads the path from the config file
	 */
	private void loadPath(){
		Properties prop = new Properties();
		InputStream input = null;
		try {
			input = new FileInputStream("config.properties");
			prop.load(input);			
			apktool_path = prop.getProperty("apktool_path");
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
