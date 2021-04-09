package com.baedang.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String loginView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/login";
	}
	
}
