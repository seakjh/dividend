package com.baedang.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.member.MemberDAO;
import com.baedang.biz.member.MemberVO;
import com.baedang.view.common.exception.DataNotFoundException;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 회원 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo) throws DataNotFoundException {
		MemberVO member = mybatis.selectOne("memberMapper.loginCheck", vo);
		if (member == null) {
			throw new DataNotFoundException("로그인 정보가 올바르지 않습니다");
		}
		return member;
	}

	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		mybatis.insert("memberMapper.register", vo);
	}
	
	// 아이디 중복확인
	@Override
	public int idChk(MemberVO vo) throws Exception {
		return mybatis.selectOne("memberMapper.idChk", vo);
	}
	
	//마이페이지 정보 수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {	
		mybatis.update("memberMapper.memberUpdate", vo); 
	}

	//회원 탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		// MemberVO에 담긴 값 전달 #{id}, #{password}
		mybatis.delete("memberMapper.memberDelete", vo);
	}

	//패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		//쿼리에서 조회한 값과 파라미터를 보내주는 값이 int형
		int result = mybatis.selectOne("memberMapper.passChk");
		return result;
	}
	
}
