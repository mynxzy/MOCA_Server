package org.mj.controller;

import org.mj.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@Autowired
	MemberService mservice;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexGet() {
		return "index";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chatGet() {
		return "chat";
	}
}
