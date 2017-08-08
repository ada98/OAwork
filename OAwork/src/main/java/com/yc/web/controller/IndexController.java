package com.yc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@RequestMapping(value="/index.action", method=RequestMethod.GET)
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping(value="/westpanel.action", method=RequestMethod.GET)
	public String toWestpanel(){
		return "westpanel";
	}
	
	
	@RequestMapping(value="/toMain.action", method=RequestMethod.GET)
	public String toMain(){
		return "main";
	}
	
	
}
