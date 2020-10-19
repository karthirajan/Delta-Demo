package org.task;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Hello {
	
	public static void main(String[] args) {
		
	
	
	 String[] array = {"1", "2", "3", "4", "5"};

	
	 List<String> intList = new ArrayList<String>(array.length);
	 for (String i : array)
	 {
	     intList.add(i);
	 }
	 
	 System.out.println(intList);
}
	}
