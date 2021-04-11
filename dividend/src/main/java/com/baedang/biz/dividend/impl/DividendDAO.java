package com.baedang.biz.dividend.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.dividend.DividendVO;

@Repository
public class DividendDAO {
	//한번 연결받으면 프로그램 종료되기전까지 유지
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
//	public void insertDividend(DividendVO vo) {
//		mybatis.insert("DividendDAOTemp.insertDividend", vo);
//	}
//	
//	public void updateDividend(DividendVO vo) {
//		mybatis.update("DividendDAOTemp.updateDividend", vo);
//	}
//
//	public void deleteDividend(DividendVO vo) {
//		mybatis.delete("DividendDAOTemp.deleteDividend", vo);
//	}
	
	public DividendVO getDividend(DividendVO vo) {
		return mybatis.selectOne("DividendDAOTemp.getDividend", vo);
	}
	
	public List<DividendVO> getDividendList(DividendVO vo) {
		//일반적인 리스트 출력
		//return mybatis.selectList("DividendDAOTemp.getDividendList", vo);
		if (vo.getSearchCondition().equals("CORP_NAME")) {
			return mybatis.selectList("DividendDAOTemp.getDividendList", vo);
		}
		else if (vo.getSearchCondition().equals("CORP_CODE")) {
			return mybatis.selectList("DividendDAOTemp.getDividendList_C", vo);
		}
		else {
			return mybatis.selectList("DividendDAOTemp.getDividendList", vo);
		}
	}
	
}
