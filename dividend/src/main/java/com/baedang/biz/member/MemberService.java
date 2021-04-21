package com.baedang.biz.member;

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
	
}