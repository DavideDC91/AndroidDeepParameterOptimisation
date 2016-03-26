package com.deep.parameter.optimisation.crest.beans;

/**
 * The alteration class represent a single alteration of a single mutant
 * @author Davide
 *
 */
public class Alteration {
	private String file, original_line, mutated_line;
	private long line_number;

	/**
	 * Constructor method of Alteration class
	 * @param file the file that have the alteration
	 * @param line the line alterated
	 * @param line_number the line number alterated
	 */
	public Alteration(String file, String mutated_line,String original_line, long line_number){
		this.file = file;
		this.mutated_line = mutated_line;
		this.original_line = original_line;
		this.line_number = line_number;
	}

	/**
	 * This method allows to get the name of the file alterated
	 * @return
	 */
	public String getFile() {
		return file;
	}

	/**
	 * This method allows to set the name of the file alterated
	 * @param file
	 */
	public void setFile(String file) {
		this.file = file;
	}

	/**
	 * This method allows to get the original line of the file alterated
	 * @return original line
	 */
	public String getOriginalLine() {
		return original_line;
	}

	/**
	 * This method allows to set the original line of the file alterated
	 * @param line
	 */
	public void setOriginalLine(String line) {
		this.original_line = line;
	}

	/**
	 * This method allows to get the mutated line of the file alterated
	 * @return mutated line
	 */
	public String getMutatedLine() {
		return mutated_line;
	}

	/**
	 * This method allows to set the mutated line of the file alterated
	 * @param line new line mutated
	 */
	public void setMutatedLine(String line) {
		this.mutated_line = line;
	}

	/**
	 * This method allows to get the line number mutated of the file alterated
	 * @return line number
	 */
	public long getLine_number() {
		return line_number;
	}

	/**
	 * This method allows to set the line number mutated of the file alterated
	 * @param line_number new line number
	 */
	public void setLine_number(long line_number) {
		this.line_number = line_number;
	}
}
