package org.datatypes;

import java.util.Scanner;

public class ATM {

	
	
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		System.out.println("Please enter your pin number");
		int pin = s.nextInt();
		
		System.out.println("select withdrawl account");
		String accType = s.next();
		
		System.out.println("enter your phno");
		long phno = s.nextLong();
		
		System.out.println("enter amount");
		float amount = s.nextFloat();
		
		System.out.println("enter your mail id");
		String next = s.next();
	}
}
