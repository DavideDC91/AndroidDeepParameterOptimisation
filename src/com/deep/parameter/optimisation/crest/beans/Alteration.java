package com.deep.parameter.optimisation.crest.beans;

public class Alteration {
	private String file, line;
	private long line_number;
	
	public Alteration(String file, String line, long line_number){
		this.file = file;
		this.line = line;
		this.line_number = line_number;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public long getLine_number() {
		return line_number;
	}

	public void setLine_number(long line_number) {
		this.line_number = line_number;
	}
}
