package com.deep.parameter.optimisation.crest.utilities;

import java.io.*;
/**
 * The Logger class allows to write on files
 * @author Davide
 *
 */
public class Logger {
	private FileWriter writer;
	
	/**
	 * The constructor method instantiates the new logger file
	 * @param file_name is the file where you want to write
	 */
	public Logger(String file_name){
		try {
			File log = new File(file_name);
			writer = new FileWriter(log);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Allows to write on the logger file
	 * @param cmd command executed
	 * @param text output get from the command
	 */
	public void writeLog(String cmd, String text){
		try {
			writer.append("\n\n**** "+cmd+" ****\n\n"+text);
			writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Allows to close the logger file
	 */
	public void closeLogger(){
		try {
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
