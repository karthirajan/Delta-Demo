package org.many;

public class Employee {
	
	public void empDetails() {
		
		System.out.println("dummy");

	}
	
	public void empDetails(int id) {
		
		System.out.println("emp id is :"+id);
       
	}
	
	public void empDetails(String name) {
		
		System.out.println("employee name is :"+name);

	}
	
	public void empDetails(float sal) {
		
        System.out.println("emp sal is :"+sal);  
		
	}
	
	public void empDetails(long phno,String mail) {
		
		System.out.println("emp phno is :"+phno);
		System.out.println("emp mail is :"+mail);
	}
	
	public void empDetails(int doorNo,String Address) {
		System.out.println("emp door no is :"+doorNo);
		System.out.println("emp Address is :"+Address);

	}
	

	
	public static void main(String[] args) {
		Employee e = new Employee();
		e.empDetails();
		e.empDetails(25544);
		e.empDetails(45432);
		e.empDetails("karthi");
		e.empDetails(14, "chennai");
		e.empDetails(6246425254l, "kagsf@gmail.com");
		
	
		CtsEmployee.dummy();
		
		
	}
	
	

}
