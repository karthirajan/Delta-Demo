package org.task;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class EmpDetails {
	
	public static void main(String[] args) {
			
		Emp e = new Emp();
		e.setEmpID(10);
		e.setEmpName("karthi");
		
		
		Organization o = new Organization();
		o.setOrg1("cts");
		o.setOrg2("tcs");
		e.setOrg(o);
		
		
		
		Emp e1 = new Emp();
		e1.setEmpID(20);
		e1.setEmpName("arivu");
		
		Organization o1 = new Organization();
		o1.setOrg1("cts");
		o1.setOrg2("tcs");
		e1.setOrg(o1);
		
		Emp e2 = new Emp();
		e2.setEmpID(30);
		e2.setEmpName("josef");
		
		Organization o2 = new Organization();
		o2.setOrg1("cts");
		o2.setOrg2("tcs");
		e2.setOrg(o2);
		
		Map<Integer, Emp> m = new HashMap<>();
		m.put(1, e);
		m.put(2, e1);
		m.put(3, e2);
		
		Set<Entry<Integer, Emp>> entrySet = m.entrySet();
		for (Entry<Integer, Emp> x : entrySet) {
			
			System.err.println(x.getKey()+"    "+x.getValue().getEmpID()+"   "+x.getValue().getEmpName()
					+"  "+x.getValue().getOrg().getOrg1()+"  "+x.getValue().getOrg().getOrg2());
			
		}
		
		
		
		
		
		
	}

}
