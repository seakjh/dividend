package com.baedang.view.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired //(required = true)
	private MemberService memberService;
	
	//로그인 화면으로
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String loginView() throws Exception {
		return "member/login";
	}
	
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
	public String joinView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/member_join";
	}
	
	@RequestMapping(value="/mypage.do", method = RequestMethod.GET)
	public String myPageView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/member_info";
	}
	
	// 02. 로그인 처리
	@RequestMapping(value="/loginCheck.do", method = RequestMethod.POST)
	public String loginCheck(MemberVO vo, HttpServletRequest request) {
		MemberVO member = memberService.loginCheck(vo);
		HttpSession session = request.getSession();
		
		if (member == null) {
			return "login";
		}
		
		session.setAttribute("member", member);
		System.out.println(member.getMember_id());
		return "redirect:/";
	}
	
	// 03. 로그아웃 처리
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();//현재 클라이언트와 관련된 세션을 무효화
		
		model.addAttribute("msg", "로그아웃 처리되었습니다");
		model.addAttribute("url", "/app");
		
		return "result/message";
	}
	
//	@RequestMapping(value = "/memRegister.do", method = RequestMethod.GET)
//	public String memRegister(Locale locale, Model model) {
//		logger.info("Welcome memRegister! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "register";
//	}
	
	
//	// 회원가입 get 
//	@RequestMapping(value = "register.do", method = RequestMethod.GET)
//	public void getRegister() throws Exception {
//		logger.info("get register");
//		System.out.println("저장완료");
//	}
//	
//	// 회원가입 post
//	@RequestMapping(value = "register.do", method = RequestMethod.POST)
//	public String postRegister(MemberVO vo) throws Exception {
//		System.out.println("저장 controller");
//	
//		service.register(vo);
//		
//		return "index.jsp";
//	}
	

	
}
