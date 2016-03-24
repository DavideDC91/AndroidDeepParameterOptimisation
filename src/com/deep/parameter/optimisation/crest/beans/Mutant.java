package com.deep.parameter.optimisation.crest.beans;

import java.util.ArrayList;

public class Mutant {
	private ArrayList<Alteration> alts;
	private String apk_name;
	private long cpu_time, heap_size, heap_alloc, heap_free;
	private double cpu_pct, user_pct, system_pct;

	public Mutant(String name){
		apk_name = name;
		alts = new ArrayList<>();
	}

	public void addAlteration(Alteration alt){
		alts.add(alt);
	}
	public Alteration getAlteration(int i){
		return alts.get(i);
	}
	public String getApk_name() {
		return apk_name;
	}
	public void setApk_name(String apk_name) {
		this.apk_name = apk_name;
	}
	public long getCpu_time() {
		return cpu_time;
	}
	public void setCpu_time(long cpu_time) {
		this.cpu_time = cpu_time;
	}
	public long getHeap_size() {
		return heap_size;
	}
	public void setHeap_size(long heap_size) {
		this.heap_size = heap_size;
	}
	public long getHeap_alloc() {
		return heap_alloc;
	}
	public void setHeap_alloc(long heap_alloc) {
		this.heap_alloc = heap_alloc;
	}
	public long getHeap_free() {
		return heap_free;
	}
	public void setHeap_free(long heap_free) {
		this.heap_free = heap_free;
	}
	public double getCpu_pct() {
		return cpu_pct;
	}
	public void setCpu_pct(double cpu_pct) {
		this.cpu_pct = cpu_pct;
	}
	public double getUser_pct() {
		return user_pct;
	}
	public void setUser_pct(double user_pct) {
		this.user_pct = user_pct;
	}
	public double getSystem_pct() {
		return system_pct;
	}
	public void setSystem_pct(double system_pct) {
		this.system_pct = system_pct;
	}

	@Override
	public String toString() {
		return "Mutant [apk_name= " + apk_name + ", cpu_pct= " + cpu_pct +"%, cpu_time= " + cpu_time + "ms, user_pct= " + user_pct + "%, system_pct= " + system_pct + 
				"%, heap_size= " + heap_size + "Kb, heap_alloc= "+ heap_alloc + "Kb, heap_free=" + heap_free + "Kb ]";
	}
	
}
