
package com.stepdefinition;

import java.util.List;

import org.junit.Assert;

import com.resources.FunctionalLibrary;

import cucumber.api.DataTable;
import cucumber.api.java.en.Then;

public class CommonSteps extends FunctionalLibrary {

	@Then("^The user should see the play store page$")
	public void the_user_should_see_the_play_store_page(DataTable tile) throws Throwable {
		List<String> expectedTitle = tile.asList(String.class);
		waitForTitle(expectedTitle.get(0));
		Assert.assertEquals(expectedTitle.get(0), driver.getTitle());
	}
}
