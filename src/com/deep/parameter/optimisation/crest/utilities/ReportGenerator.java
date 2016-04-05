package com.deep.parameter.optimisation.crest.utilities;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import com.deep.parameter.optimisation.crest.beans.Alteration;
import com.deep.parameter.optimisation.crest.beans.Mutant;
import static java.nio.file.StandardOpenOption.*;

/**
 * This Class allows to generate the Report
 * @author Davide
 *
 */
public class ReportGenerator {

	private ArrayList<Mutant> mutants;
	private Mutant original;
	/**
	 * Constructor Method of the class
	 * @param m Mutants to show in the report
	 */
	public ReportGenerator(ArrayList<Mutant> m, Mutant original){
		this.original = original;
		mutants = new ArrayList<>();
		mutants = m;
	}

	/**
	 * This method generate a Html report
	 * @param path path where save the report
	 */
	public void generateHtmlReport(String path){

		String s = "<style>" +
				" table { " +
				" border-collapse: collapse; " +
				"}" +
				" table, td, th {" +
				" border: 1px solid black;" +
				"}" +
				"</style><table>" +
				"<tr>" +
				"<th >Original name</th>" +
				"<th>Execution time (ms)</th>" +
				"<th>Cpu Time (ms)</th>" +
				"<th>Cpu pct (%)</th>" +
				"<th>User pct (%)</th>" +
				"<th>System pct (%)</th>" +
				"<th>Heap size (Kb)</th>" +
				"<th>Heap allocated (Kb)</th>" +
				"<th>Heap free (Kb)</th>" +
				"<tr>"+
				"<td  align='center'>"+ original.getApk_name() +"</td>" +
				"<td  align='center'>"+ original.getExecution_time() +"</td>" +
				"<td  align='center'>"+ original.getCpu_time() +"</td>" +
				"<td  align='center'>"+ original.getCpu_pct() +"</td>" +
				"<td  align='center'>"+ original.getUser_pct() +"</td>" +
				"<td  align='center'>"+ original.getSystem_pct() +"</td>" +
				"<td  align='center'>"+ original.getHeap_size() +"</td>" +
				"<td  align='center'>"+ original.getHeap_alloc() +"</td>" +
				"<td  align='center'>"+ original.getHeap_free() +"</td>" +
				"</tr>" +
				"</table> <br>";
		s += "<style>" +
				" table { " +
				" border-collapse: collapse; " +
				"}" +
				" table, td, th {" +
				" border: 1px solid black;" +
				"}" +
				"</style><table>" +
				"<tr>" +
				"<th >Mutant name</th>" +
				"<th>Execution time (ms)</th>" +
				"<th>Cpu Time (ms)</th>" +
				"<th>Cpu pct (%)</th>" +
				"<th>User pct (%)</th>" +
				"<th>System pct (%)</th>" +
				"<th>Heap size (Kb)</th>" +
				"<th>Heap allocated (Kb)</th>" +
				"<th>Heap free (Kb)</th>" +
				"<th>File</th>" +
				"<th>Type</th>" +
				"<th>Original</th>" +
				"<th>Mutated</th>" +
				"<th>Line</th>" +
				"</tr>";

		for(Mutant m: mutants){
			for(Alteration a: m.getAllAlteration()){
				s += "<tr>"+
						"<td  align='center'>"+ m.getApk_name() +"</td>" +
						"<td  align='center'>"+ m.getExecution_time() +"</td>" +
						"<td  align='center'>"+ m.getCpu_time() +"</td>" +
						"<td  align='center'>"+ m.getCpu_pct() +"</td>" +
						"<td  align='center'>"+ m.getUser_pct() +"</td>" +
						"<td  align='center'>"+ m.getSystem_pct() +"</td>" +
						"<td  align='center'>"+ m.getHeap_size() +"</td>" +
						"<td  align='center'>"+ m.getHeap_alloc() +"</td>" +
						"<td  align='center'>"+ m.getHeap_free() +"</td>" +
						"<td  align='center'>"+ a.getFile() +"</td>" +
						"<td  align='center'>"+ a.getAlteration_type() +"</td>" +
						"<td  align='center'>"+ a.getOriginalLine() +"</td>" +
						"<td  align='center'>"+ a.getMutatedLine() +"</td>" +
						"<td  align='center'>"+ a.getLine_number() +"</td>" +
						"</tr>";
			}
		}
		s+= "</table>";
		byte data[] = s.getBytes();
		Path p = Paths.get(path+"/Report.html");
		try (OutputStream out = new BufferedOutputStream(
				Files.newOutputStream(p, CREATE))) {
			out.write(data, 0, data.length);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
