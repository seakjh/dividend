package com.baedang.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.baedang.biz.member.MemberDAO;
import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberControllerIdPw {
	
	@Autowired
	private MemberService memberService;
	
		
	
	//아이디 찾기 
	@RequestMapping(value = "/findId.do", method = RequestMethod.GET)
	public String findpwView(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("MemberControllerIdPw에서 처리");
			return "member/findId";
	}

	//아이디 찾기
	@RequestMapping(value="/findId.do", method = RequestMethod.POST)
	public String findID(HttpServletResponse response, @RequestParam("member_email") String member_email, Model model) throws Exception{
		System.out.println("MemberControllerIdPw에서 처리");
		model.addAttribute("member_id", memberService.find_id(response, member_email));
		return "/member/findId_result";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/findPw.do", method = RequestMethod.POST)
	public void find_pw(@ModelAttribute MemberVO vo, HttpServletResponse response) throws Exception{
		System.out.println("MemberControllerIdPw에서 처리");
		memberService.find_pw(response, vo);
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/findPw.do", method = RequestMethod.GET)
	public String find_pw_form() throws Exception{
		return "/member/findPw";
	}
		
	
}
