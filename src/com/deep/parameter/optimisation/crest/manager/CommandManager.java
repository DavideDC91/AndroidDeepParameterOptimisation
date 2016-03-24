package com.deep.parameter.optimisation.crest.manager;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public class CommandManager {

	private ProcessBuilder pb;
	
	public CommandManager(ProcessBuilder pb){
		this.pb= pb;
	}

	public String executeCommand(String working_directory) throws IOException {

		StringBuffer output = new StringBuffer();
		pb.directory(new File(working_directory));
		pb.redirectErrorStream(true);
		//pb.redirectOutput(Redirect.appendTo(log));
		Process p = pb.start();
		try {
			//p = Runtime.getRuntime().exec(command, null, new File(working_directory));
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
