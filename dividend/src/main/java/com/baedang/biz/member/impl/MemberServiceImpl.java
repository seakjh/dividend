package com.baedang.biz.member.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.member.MemberDAO;
import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired //(required = true)
	//@Qualifier("memberDAOImpl")
	private MemberDAO memberDAO;
	
	// 00. 회원 정보 입력
	@Override
	public void register(MemberVO vo) throws Exception {
		memberDAO.register(vo);
	}
	
	// 01_01. 회원 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return memberDAO.loginCheck(vo);
	}
	
	// 01_02. 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return memberDAO.viewMember(vo);
	}
	
}
