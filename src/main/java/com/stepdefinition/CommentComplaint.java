package com.stepdefinition;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.WebElement;

import com.ObjectRepository.CommentComplaintPage;

import cucumber.api.DataTable;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CommentComplaint {

	@Then("^The user should see the four steps$")
	public void the_user_should_see_the_four_steps(DataTable steps) throws Throwable {
		List<String> actualStepList = new ArrayList<String>();
		List<String> expactedstepList = steps.asList(String.class);
		CommentComplaintPage comment = new CommentComplaintPage();
		List<WebElement> actualsStepsElement = comment.getHeader_steps();

		for (WebElement ele : actualsStepsElement) {
			actualStepList.add(ele.getText());
		}
		Assert.assertEquals(expactedstepList, actualStepList);
	}
}
