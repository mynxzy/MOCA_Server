package org.mj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mj.model.MemberDTO;
import org.mj.model.ShopDTO;
import org.mj.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {
	@Autowired
	ShopService sservice;
	
	// shop등록으로 가기위한 컨트롤러
	@RequestMapping(value = "/shop/shop", method = RequestMethod.GET)
	public String shopGet() {
		return "/shop/shop";
	}
	
	// shop등록이 이루어지는 컨트롤러
	@RequestMapping(value = "/shop/shop", method = RequestMethod.POST)
	public String shopPost(ShopDTO sdto, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberDTO mdto = (MemberDTO)session.getAttribute("session");
		try {
			String b_num = mdto.getB_number();
			if(b_num != null && b_num != "") {
				sservice.ShopInsert(sdto);
				return "redirect:/index";
			} else {
				return "redirect:/index";
			}	
		}catch(NullPointerException ne) {
				return "/member/login";
		}		
	}

	// shop 목록을 보기위한 컨트롤러
	@RequestMapping(value = "/shop/shopList", method = RequestMethod.GET)
	public String shopListGet(Model model, ShopDTO sdto) {
		model.addAttribute("slist", sservice.ShopList(sdto));
		return "/shop/shopList";
	}
}
