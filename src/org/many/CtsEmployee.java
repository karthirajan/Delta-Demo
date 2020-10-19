package org.many;

public final class CtsEmployee {
	
	
	final int id=3;
	
	public void empDetails(int id2) {
		//id=4;
		System.out.println("cts employee id is :"+id);
	}
	

	
	public final static void dummy(){
		System.out.println("dummy");
	}
	
	public void scb() {
		// TODO Auto-generated method stub

	}
	
	public static void main(String[] args) {
		CtsEmployee cts = new CtsEmployee();
		cts.empDetails(5644);

		dummy();
	}

}
