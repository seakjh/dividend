package com.baedang.biz.member;

import javax.servlet.http.HttpSession;

public interface MemberDAO {
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;

	public boolean DeleteMember(int num);

	public boolean MemberModify(MemberVO boarddata);
	
	// 01_01. 회원 로그인 체크
	public MemberVO loginCheck(MemberVO vo);
	
	// 01_02. 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
}