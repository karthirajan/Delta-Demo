package org.datatypes;

public class EmployeeDetails {
	
	int number;
	char ch;
	String s;
	boolean b;
    public void empName(String name) {
    	
		System.out.println(number);
		System.out.println(ch);
		System.out.println(s);
		System.out.println(b);
    	System.out.println("employee name is :"+name);

	}
    
    public void empId(int id) {
		
    	System.out.println("employee id is :"+id);

	}
    
    public void empPhno(long phno) {

    	System.out.println("employee phno is :"+phno);

	}
    
    public void empSal(double sal) {
		
    	System.out.println("employee sal is :"+sal);

	}
    
    public void empMail(String mail) {

    	System.out.println("employee mail is :"+mail);
    	

	}
    
    public void empGen(char gender) {

    	System.out.println("employee gender is :"+gender);
    	

	}
    
    public static void main(String[] args) {
    	EmployeeDetails e = new EmployeeDetails();
    	e.empId(456542);
    	e.empName("karthi");
    	e.empPhno(7525625425151l);
    	e.empGen('M');
    	e.empMail("karthi@gmail.com");
    	e.empSal(30000);
    	
    	
	}
    


}
