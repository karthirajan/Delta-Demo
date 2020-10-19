package org.constructor;

public class StudentsDetails extends CarDetails {
	
	public StudentsDetails() {
		super("frree");
		System.out.println("default constructor");
		
	}
	
	public StudentsDetails(int id) {
	   this("fff");
		
		System.out.println("Integer argument constructor :"+id);
		
	}
	
	public StudentsDetails(String name) {
		
		System.out.println("String argument constructor :"+name);
		
	}
	
	public static void main(String[] args) {
		StudentsDetails s = new StudentsDetails();


	}
	
	

}
