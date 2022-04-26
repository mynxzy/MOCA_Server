package org.mj.controller;

import javax.servlet.http.HttpSession;

import org.mj.model.MemberDTO;
import org.mj.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@Autowired
	MemberService mservice;
	
	//	로그인 화면으로 가기위한 컨트롤러
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String loginGet() {
		return "/member/login";
	}
	
	// 실제로 로그인이 이루어지는 컨트롤러
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String loginPost(MemberDTO mdto, HttpSession session) {
		MemberDTO log = mservice.Login(mdto);
		if(log != null) {
			session.setAttribute("session", mservice.Login(mdto));
			return "redirect:/index";
		} else {
			return "redirect:/member/login";
		}
		
	}
	
	// 회원가입 화면으로 가기위한 컨트롤러
	@RequestMapping(value = "/member/sign", method = RequestMethod.GET)
	public String signGet() {
		return "/member/sign";
	}
	
	// 실제 회원가입이 이루어지는 컨트롤러
	@RequestMapping(value = "/member/sign", method = RequestMethod.POST)
	public String signPOST(MemberDTO mdto) {
		System.out.println(mdto);
		mservice.MemberInsert(mdto);
		return "redirect:/member/login";
	}
	
	// 로그아웃
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logoutGet(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}
}
