package com.baedang.biz.member;

public interface MemberDAO {
	
	// 회원 로그인 체크
	public MemberVO loginCheck(MemberVO vo);
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;

	//아이디 중복 체크
	public int idChk(MemberVO vo) throws Exception;
	
	//마이페이지 회원정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	//회원 탈퇴
	public void memberDelete(MemberVO vo) throws Exception;

	//패스워드 체크
	public int passChk (MemberVO vo) throws Exception;
	
	///////////////
	
	//비밀번호 변경
	public void memberChangePw(MemberVO vo)throws Exception;
	
	// 비밀번호 변경
	public int updatePw(MemberVO vo) throws Exception;

	//아이디 찾기
	public String findID(String member_email)  throws Exception;
	
	public String findEmail(String member_id)  throws Exception;

	// 비밀번호 변경
	public int update_pw(MemberVO vo) throws Exception;
	
}