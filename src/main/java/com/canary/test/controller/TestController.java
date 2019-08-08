package com.canary.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/test/string")
	public String testString()
	{
		return "shobhit";
	}
}
