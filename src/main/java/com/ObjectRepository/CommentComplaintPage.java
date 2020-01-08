package com.ObjectRepository;

import java.util.List;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.resources.FunctionalLibrary;

public class CommentComplaintPage {

	public CommentComplaintPage() {
		PageFactory.initElements(FunctionalLibrary.driver, this);

	}

	@FindBy(xpath = "//form[@id='comment_complaint']//h2")
	private List<WebElement> header_steps;

	public List<WebElement> getHeader_steps() {
		return header_steps;
	}

}
