package com.deep.parameter.optimisation.crest.beans;

/**
 * The alteration class represent a single alteration of a single mutant
 * @author Davide
 *
 */
public class Alteration implements Comparable<Alteration> {
	private String file, original_line, mutated_line, alteration_type;
	private String final_line, current_line;
	private boolean failure = false, final_value = false;
	private long line_number;

	/**
	 * Constructor method of Alteration class
	 * @param file the file that have the alteration
	 * @param line the line alterated
	 * @param line_number the line number alterated
	 */
	public Alteration(String file, String mutated_line,String original_line, long line_number, String alteration_type){
		this.file = file;
		this.mutated_line = mutated_line;
		this.original_line = original_line;
		this.line_number = line_number;
		this.alteration_type = alteration_type;
	}	
	
	/**
	 * This method allows to get the alteration type of the file alterated
	 * @return
	 */
	public String getAlteration_type() {
		return alteration_type;
	}

	/**
	 * This method allows to set the alteration type of the file alterated
	 * @return
	 */
	public void setAlteration_type(String alteration_type) {
		this.alteration_type = alteration_type;
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

	/**
	 * This method allows to get the last line with a good value alterated
	 * @return line number
	 */
	public String getCurrent_line() {
		return current_line;
	}

	/**
	 * This method allows to set the last line with a good value alterated
	 * @return line number
	 */
	public void setCurrent_line(String current_line) {
		this.current_line = current_line;
	}

	/**
	 * This method allows to get the final line with a good value alterated
	 * @return line number
	 */
	public String getFinal_line() {
		return final_line;
	}

	/**
	 * This method allows to set the final line with a good value alterated
	 * @return line number
	 */
	public void setFinal_line(String final_line) {
		this.final_line = final_line;
	}

	/**
	 * This method allows to get if there is a failure during the test with the last current line
	 * @return line number
	 */
	public boolean isFailure() {
		return failure;
	}

	/**
	 * This method allows to set if there is a failure during the test with the last current line
	 * @return line number
	 */
	public void setFailure(boolean failure) {
		this.failure = failure;
	}

	/**
	 * This method allows to get if there we have to stop with change the value of the line
	 * @return line number
	 */
	public boolean isFinal_value() {
		return final_value;
	}

	/**
	 * This method allows to set if there we have to stop with change the value of the line
	 * @return line number
	 */
	public void setFinal_value(boolean final_value) {
		this.final_value = final_value;
	}
	
	@Override
	public int compareTo(Alteration o) {
		// TODO Auto-generated method stub
		return Long.compare(this.line_number, o.getLine_number());
	}
}
