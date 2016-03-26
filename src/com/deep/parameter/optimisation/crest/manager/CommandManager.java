package com.deep.parameter.optimisation.crest.manager;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
/**
 * This class allows to execute shell command
 * @author Davide
 *
 */
public class CommandManager {

	private ProcessBuilder pb;

	/**
	 * Constructor of the class, instantiate the process Builder
	 * @param pb
	 */
	public CommandManager(ProcessBuilder pb){
		this.pb= pb;
	}

	/**
	 * This method allows to execute the command in the shell
	 * @param working_directory where the command have to be launched
	 * @return The output of the command executed
	 */
	public String executeCommand(String working_directory) {
		StringBuffer output = new StringBuffer();
		pb.directory(new File(working_directory));
		pb.redirectErrorStream(true);
		//pb.redirectOutput(Redirect.appendTo(log));
		try {
			//p = Runtime.getRuntime().exec(command, null, new File(working_directory));
			Process p = pb.start();
			p.waitFor();
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line = "";			
			while ((line = reader.readLine())!= null) {
				output.append(line + "\n");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return output.toString();
	}
}
