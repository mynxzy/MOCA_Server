package org.mj.controller;

import org.mj.model.ShopDTO;
import org.mj.service.MemberService;
import org.mj.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@Autowired
	MemberService mservice;
	@Autowired
	ShopService sservice;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexGet(Model model, ShopDTO sdto) {
		model.addAttribute("slist", sservice.ShopList(sdto));
		return "index";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chatGet() {
		return "chat";
	}
	
	@RequestMapping(value = "/projectInfo", method = RequestMethod.GET)
	public String projectInfoGet() {
		return "projectInfo";
	}
}

