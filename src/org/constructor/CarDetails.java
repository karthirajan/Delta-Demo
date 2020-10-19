package org.constructor;

public class CarDetails {
	
	public CarDetails() {
		this("swift");
		System.out.println("car default constructor");
	}
	
	public CarDetails(String name) {
		
		System.out.println("car argument constructor :"+name);
		
	}

}
