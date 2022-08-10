package com.dto;

public class EmployeDto {

	
	private int empId ;
	private String name;
	private String dpt;
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDpt() {
		return dpt;
	}
	public void setDpt(String dpt) {
		this.dpt = dpt;
	}
	@Override
	public String toString() {
		return "EmployeDto [empId=" + empId + ", name=" + name + ", dpt=" + dpt + "]";
	}
	
	
	
	
}
