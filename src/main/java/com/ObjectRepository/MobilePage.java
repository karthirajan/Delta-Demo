package com.ObjectRepository;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.resources.FunctionalLibrary;

public class MobilePage {

	public MobilePage() {
		PageFactory.initElements(FunctionalLibrary.driver, this);

	}

	@FindBy(xpath = "//table//img[contains(@src,'btn_google')]//ancestor::div[@class='cellContent image parbase']")
	private WebElement lnk_playStore;

	@FindBy(xpath="//h3[text()='The Fly Delta App']")
	private WebElement headerText;
	
	public WebElement getHeaderText() {
		return headerText;
	}

	public WebElement getLnk_playStore() {
		return lnk_playStore;
	}

}
