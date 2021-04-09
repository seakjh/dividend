package com.baedang.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
	public String joinView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/member_join";
	}
	
	@RequestMapping(value="/mypage.do", method = RequestMethod.GET)
	public String myPageView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/member_info";
	}
	
}
