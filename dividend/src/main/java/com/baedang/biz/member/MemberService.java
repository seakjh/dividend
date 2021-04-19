package com.baedang.biz.member;

import javax.servlet.http.HttpSession;

public interface MemberService {

	// 00. 회원 정보 저장
	public void register(MemberVO vo) throws Exception;

	// 01_01. 회원 로그인 체크
	public MemberVO loginCheck(MemberVO vo);
	
	// 01_02. 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
}