package org.bank;

public abstract class ReserveBank {
	
	public abstract void eduLoan();
	
	public abstract void personalLoan();
	
	public abstract void houseLoan();
	
	public abstract void carLoan();
	
	
	public void agriLoan() {
		
		System.out.println("agri loan percentage is 15%");

	}
	
	public static void main(String[] args) {
		IciciLocal.savingAcc2();
	}

	

}
