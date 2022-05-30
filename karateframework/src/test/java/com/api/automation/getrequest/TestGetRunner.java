package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {
	//First method
	@Test
	public Karate runTest() {
		return Karate.run("GetRequest","Responsematcher","Variable").relativeTo(getClass());
	
		
	}
//second method
	@Test
	public Karate runtestUsingClassPath() {
		return Karate.run("classpath:/com/api/automation/getrequest/GetRequest.feature");
	}
}
