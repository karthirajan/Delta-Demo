package com.stepdefinition;

import com.ObjectRepository.MobilePage;
import com.resources.FunctionalLibrary;

import cucumber.api.java.en.When;

public class MobileSteps extends FunctionalLibrary {
	@When("^The user clicks the play store icon$")
	public void the_user_clicks_the_play_store_icon() throws Throwable {
		MobilePage mobile = new MobilePage();
		waitForElementVisibility(mobile.getHeaderText());
		waitForElementClickable(mobile.getLnk_playStore());
		click(mobile.getLnk_playStore());
	}

}
