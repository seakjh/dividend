package com.baedang.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.member.MemberDAO;
import com.baedang.biz.member.MemberVO;
import com.baedang.view.common.exception.DataNotFoundException;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired //(required = true)
	private SqlSessionTemplate mybatis;
	
	// 회원가입
//	@Override
//	public void register(MemberVO vo) {
//		mybatis.insert("memberMapper.register", vo);
//	}
	
	// 01_01. 회원 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo) throws DataNotFoundException {
		MemberVO member = mybatis.selectOne("memberMapper.loginCheck", vo);
		if (member == null) {
			throw new DataNotFoundException("로그인 정보가 올바르지 않습니다");
		}
		return member;
	}

	@Override
	public void register(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean DeleteMember(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean MemberModify(MemberVO boarddata) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 01_02. 회원 로그인 정보
//	@Override
//	public MemberVO viewMember(MemberVO vo) {
//		return mybatis.selectOne("memberMapper.viewMember", vo);
//	}
	
	//회원 탈퇴처리
//	public void delete(int member_id) {
//		mybatis.delete("Member.delete", member_id);
//	}
	
}
