package com.baedang.biz.member.impl;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.member.MemberDAO;
import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	// 회원 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return memberDAO.loginCheck(vo);
	}
	
	// 회원 가입
	@Override
	public void register(MemberVO vo) throws Exception {
		memberDAO.register(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		return memberDAO.idChk(vo);
	}
	
	//마이페이지 수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		memberDAO.memberUpdate(vo);
	}

	//회원 탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		memberDAO.memberDelete(vo);
	}

	//패스워드 체크 //사용안함
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = memberDAO.passChk(vo);
		return result;
	}
	
	//비밀번호 변경
	@Override
	public void memberChangePw(MemberVO vo) throws Exception {
		memberDAO.memberChangePw(vo);
		
	}

	//아이디 찾기
	@Override
	public String find_id(HttpServletResponse response, String member_email) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id =memberDAO.findID(member_email);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}

	//비밀번호 찾기
	@Override
	public void find_pw(HttpServletResponse response, MemberVO vo) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 아이디가 없으면
		if(memberDAO.idChk(vo) == 0) {
			out.print("아이디가 없습니다.");
			out.print("<br><a href='/app'>홈으로 이동</a>");
			out.close();
		}
		// 가입에 사용한 이메일이 아니면
		
		
		else if(!vo.getMember_email().equals(memberDAO.findEmail(vo.getMember_id()))){
			out.print("잘못된 이메일 입니다.");
			out.print("<br><a href='/app'>홈으로 이동</a>");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setMember_password(pw);
			// 비밀번호 변경
			memberDAO.update_pw(vo);
			
			// 비밀번호 변경 메일 발송
			send_mail(vo, "find_pw");
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.print("<br><a href='/app'>홈으로 이동</a>");
			out.close();
		}
		
	}

	@Override
	public void send_mail(MemberVO vo, String div) throws Exception {
		// Mail Server 설정
		
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "lynn778@naver.com";
		String hostSMTPpwd = "spdlqj100%";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "lynn778@naver.com";
		String fromName = "Spring Homepage";
		String subject = "";
		String msg = "";
		
		if(div.equals("find_pw")) {
			subject = "배당탑 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getMember_name() + "님의 임시 비밀번호 입니다. <br>비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getMember_password() + "</p></div>";
		}
		// 받는 사람 E-Mail 주소
		String mail = vo.getMember_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
		
	}	
	
}
