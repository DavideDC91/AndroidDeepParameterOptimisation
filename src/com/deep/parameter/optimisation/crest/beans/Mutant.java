package com.deep.parameter.optimisation.crest.beans;

import java.util.ArrayList;

/**
 * This class is the bean that represent the mutants
 * @author Davide
 *
 */
public class Mutant {
	private ArrayList<Alteration> alts;
	private String apk_name;
	private long execution_time, cpu_time, heap_size, heap_alloc, heap_free;
	private double cpu_pct, user_pct, system_pct;

	/**
	 * Constructor of the Mutant class
	 * @param name name of the new mutant
	 */
	public Mutant(String name){
		apk_name = name;
		alts = new ArrayList<>();
	}

	/**
	 * This method allows to add the alterations of the code of this mutant
	 * @param alt new alteration
	 */
	public void addAlteration(Alteration alt){
		alts.add(alt);
	}
	
	/**
	 * This method allows to get the alteration in position i of the code of this mutant
	 * @param i the position of the alteration
	 * @return alteration
	 */
	public Alteration getAlteration(int i){
		return alts.get(i);
	}
	
	/**
	 * This method allows to get the alterations of the code of this mutant
	 * @param i the position of the alteration
	 * @return alteration
	 */
	public ArrayList<Alteration> getAllAlteration(){
		return alts;
	}
	
	/**
	 * this method allow to get the number of the alterations
	 * @return number alteration
	 */
	public int getNumberAlterations(){
		return alts.size();
	}
	
	/**
	 * This method allows to set the mutant name
	 * @return mutant name
	 */
	public String getApk_name() {
		return apk_name;
	}
	
	/**
	 * This method allows to set the mutant name
	 * @param apk_name new name
	 */
	public void setApk_name(String apk_name) {
		this.apk_name = apk_name;
	}
	
	/**
	 * This method allows to get the cpu time of the execution of this mutant
	 * @return cpu time
	 */
	public long getCpu_time() {
		return cpu_time;
	}
	
	/**
	 * This method allows to set the cpu time of the execution of this mutant
	 * @param cpu_time
	 */
	public void setCpu_time(long cpu_time) {
		this.cpu_time = cpu_time;
	}
	
	/**
	 * This method allows to get the execution time of the execution of this mutant
	 * @return execution time
	 */
	public long getExecution_time() {
		return execution_time;
	}
	
	/**
	 * This method allows to set the execution time of the execution of this mutant
	 * @param execution_time new execution time
	 */
	public void setExecution_time(long execution_time) {
		this.execution_time = execution_time;
	}
	
	/**
	 * This method allows to get the heap size of the execution of this mutant
	 * @return heap size
	 */
	public long getHeap_size() {
		return heap_size;
	}
	
	/**
	 * This method allows to set the heap size of the execution of this mutant
	 * @param heap_size new heap size
	 */
	public void setHeap_size(long heap_size) {
		this.heap_size = heap_size;
	}
	
	/**
	 * This method allows to get the heap allocated for the execution of this mutant
	 * @return heap allocated
	 */
	public long getHeap_alloc() {
		return heap_alloc;
	}
	
	/**
	 * This method allows to set the heap allocated for the execution of this mutant
	 * @param heap_alloc new heap allocated
	 */
	public void setHeap_alloc(long heap_alloc) {
		this.heap_alloc = heap_alloc;
	}
	
	/**
	 * This method allows to get the heap free of the execution of this mutant
	 * @return heap free
	 */
	public long getHeap_free() {
		return heap_free;
	}
	
	/**
	 * This method allows to set the heap free of the execution of this mutant
	 * @param heap_free new heap free
	 */
	public void setHeap_free(long heap_free) {
		this.heap_free = heap_free;
	}
	
	/**
	 * This method allows to get the cpu percentage of the execution of this mutant
	 * @return cpu percentage
	 */
	public double getCpu_pct() {
		return cpu_pct;
	}
	
	/**
	 * This method allows to set the cpu percentage of the execution of this mutant
	 * @param cpu_pct new cpu percentage
	 */
	public void setCpu_pct(double cpu_pct) {
		this.cpu_pct = cpu_pct;
	}
	
	/**
	 * This method allows to get the user percentage of the execution of this mutant
	 * @return user percentage
	 */
	public double getUser_pct() {
		return user_pct;
	}
	
	/**
	 * This method allows to set the user percentage of the execution of this mutant
	 * @param user_pct new user percentage
	 */
	public void setUser_pct(double user_pct) {
		this.user_pct = user_pct;
	}
	
	/**
	 * This method allows to get the system percentage of the execution of this mutant
	 * @return system percentage
	 */
	public double getSystem_pct() {
		return system_pct;
	}
	
	/**
	 * This method allows to set the system percentage of the execution of this mutant
	 * @param system_pct new system percentage
	 */
	public void setSystem_pct(double system_pct) {
		this.system_pct = system_pct;
	}

	@Override
	public String toString() {
		return "Mutant [apk_name= " + apk_name + ", execution_time= " + execution_time + "ms, cpu_pct= " + cpu_pct +"%, cpu_time= " + cpu_time + "ms, user_pct= " + user_pct + "%, system_pct= " + system_pct + 
				"%, heap_size= " + heap_size + "Kb, heap_alloc= "+ heap_alloc + "Kb, heap_free=" + heap_free + "Kb ]";
	}
	
}
