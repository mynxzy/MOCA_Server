package org.mj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mj.model.MemberDTO;
import org.mj.model.ReviewDTO;
import org.mj.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	@Autowired
	ReviewService rservice;

	// 내리뷰로 가기위한 컨트롤러
	@RequestMapping(value = "/review/myReview", method = RequestMethod.GET)
	public String myReviewGet(Model model, HttpServletRequest request) {	
		
		HttpSession session = request.getSession();
		MemberDTO mdto = (MemberDTO)session.getAttribute("session");	
		
		try {
			String uId = mdto.getU_id();
			model.addAttribute("rlist", rservice.ReviewList(uId));
			return "review/myReview";
		}catch(NullPointerException ne) {
				return "/member/login";
		}
		
	}
	
	// 리뷰쓰기로 가기위한 컨트롤러 
	@RequestMapping(value = "/review/reviewWrite", method = RequestMethod.GET)
	public String reviewWriteGet() {
		return "/review/reviewWrite";
	}
	
	// 리뷰쓰기가 이루어지는 컨트롤러 
	@RequestMapping(value = "/review/reviewWrite", method = RequestMethod.POST)
	public String reviewWritePost(ReviewDTO rdto) {
		rservice.ReviewWrite(rdto);
		return "redirect:/review/myReview";
	}
	
	// 리뷰수정으로 가기위한 컨트롤러
	@RequestMapping(value = "/review/reviewModify", method = RequestMethod.GET)
	public void reviewDetailGet(Model model, int rno) {
		model.addAttribute("rmodify", rservice.reviewModify(rno));
	}
	
	// 리뷰수정이 되는 컨트롤러
	@RequestMapping(value = "/review/reviewModify", method = RequestMethod.POST)
	public String reviewDetailPost(ReviewDTO rdto) {
		rservice.ReviewModifySet(rdto);
		
		return "redirect:/review/myReview";
	}
	
	// 리뷰삭제를 위한 컨트롤러
	@RequestMapping(value = "/review/reviewRemove", method = RequestMethod.GET)
	public String reviewRemoveGet(int rno) {
		rservice.ReviewRemove(rno);
		return "redirect:/review/myReview";
	}
}
