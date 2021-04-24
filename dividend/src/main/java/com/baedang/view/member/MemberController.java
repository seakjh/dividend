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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//로그인 화면으로
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String loginView() throws Exception {
		return "member/login";
	}
	
	//회원가입 화면
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
	public String joinView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/register";
	}
	
	//마이페이지
	@RequestMapping(value="/mypage.do", method = RequestMethod.GET)
	public String myPageView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "member/myPage";
	}
	
	//회원 탈퇴 get
	@RequestMapping(value="memberDelete.do", method=RequestMethod.GET)
	public String memberDeleteView(){
		return "member/myPage_delete";
	}
	
	// 로그인 처리
	@RequestMapping(value="/loginCheck.do", method = RequestMethod.POST)
	public String loginCheck(MemberVO vo, HttpServletRequest request) {
		MemberVO member = memberService.loginCheck(vo);
		HttpSession session = request.getSession();
		
		if (member == null) {
			return "login";
		}
		
		session.setAttribute("member", member);
		session.setAttribute("member_id", member.getMember_id());
		return "redirect:/";
	}
	
	// 로그아웃 처리
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("member_id", null);
		session.invalidate();//현재 클라이언트와 관련된 세션을 무효화
		model.addAttribute("msg", "로그아웃 처리되었습니다");
		model.addAttribute("url", "/app");
		return "result/message";
	}
	
	//아이디 중복 체크
	@RequestMapping(value="/idChk.do", method=RequestMethod.POST)
	@ResponseBody
	public int idChk(MemberVO vo) throws Exception{
		return memberService.idChk(vo);
	}
	
	// 회원가입 post
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String postRegister(MemberVO vo, Model model) throws Exception {
		memberService.register(vo);
		model.addAttribute("msg", "환영합니다! 회원가입에 성공했습니다!");
		model.addAttribute("url", "/app");
		return "result/message";
	}
	
	//마이페이지 수정
	@RequestMapping(value="memberUpdate.do", method = RequestMethod.POST)
	public String registerUpdate(@ModelAttribute("member") MemberVO vo, HttpSession session, Model model) throws Exception{
		memberService.memberUpdate(vo);
		session.invalidate();
		model.addAttribute("msg", "정보수정 되었습니다");
		model.addAttribute("url", "/app");
		return "result/message";
	}
	
	//회원 탈퇴 post 
	@RequestMapping(value="memberDelete.do", method=RequestMethod.POST)
	 public String memberDelete(MemberVO vo, HttpServletRequest request, Model model) throws Exception{
		// 세션에 있는 member를 가져와 member변수에 넣어줌.
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		// 세션에있는 비밀번호
		String sessionPass = member.getMember_password();	
		// vo로 들어오는 비밀번호
		String voPass = vo.getMember_password();
		
		//비밀번호 일치하지 않을 때
		if(!(sessionPass.equals(voPass))) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다."); //jsp로 전달.
			return "result/error";
		}
		else {
			memberService.memberDelete(vo);
			session.setAttribute("member_id", null);
			session.invalidate();//현재 클라이언트와 관련된 세션을 무효화
			model.addAttribute("msg", "탈퇴하였습니다."); //jsp로 전달.
			model.addAttribute("url", "/app"); //jsp로 전달.
			return "result/message";
		}
 	}
	
	//패스워드 체크  //아직 테스트 못해봤다아...(다른 방식으로 구현함)
	@RequestMapping(value="/passChk", method=RequestMethod.POST)
	@ResponseBody
	public int passChk(MemberVO vo) throws Exception {
		System.out.println("회원탈퇴 비밀번호 체크");
		
		int result = memberService.passChk(vo);
		return result;
	}
}
