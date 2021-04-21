package com.baedang.biz.member.impl;

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
	
}
