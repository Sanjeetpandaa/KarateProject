package com.api.automation.postrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunnerPostRequest {
	
	@Test
	public Karate runTest() {
		return Karate.run("POSTRequestCreate").relativeTo(getClass());
	}

}
