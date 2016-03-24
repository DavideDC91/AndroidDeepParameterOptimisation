package com.deep.parameter.optimisation.crest.utilities;

import java.io.*;

public class Logger {
	private FileWriter writer;
	public Logger(String file_name){
		try {
			File log = new File(file_name);
			writer = new FileWriter(log);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void writeLog(String cmd, String text){
		try {
			writer.append("\n\n**** "+cmd+" ****\n\n"+text);
			writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void closeLogger(){
		try {
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
