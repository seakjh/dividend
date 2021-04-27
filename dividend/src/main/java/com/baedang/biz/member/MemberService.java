package com.baedang.biz.member;

import javax.servlet.http.HttpServletResponse;

public interface MemberService {

	// 회원 로그인 체크
	public MemberVO loginCheck(MemberVO vo);

	// 아이디 중복 체크
	public int idChk(MemberVO vo) throws Exception;
	
	// 회원 정보 저장
	public void register(MemberVO vo) throws Exception;
	
	//마이페이지 정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	//회원 삭제
	public void memberDelete(MemberVO vo) throws Exception;	
	
	public int passChk(MemberVO vo) throws Exception;
	
	///////////////////
	
	//비밀번호 변경
	public void memberChangePw(MemberVO vo) throws Exception;
	
	//아이디 찾기
	public String find_id(HttpServletResponse response, String member_email) throws Exception;

	//비밀번호 찾기
	public void find_pw(HttpServletResponse response, MemberVO vo) throws Exception;
	
	// 이메일 발송
	public void send_mail(MemberVO vo, String div) throws Exception ;
	
}