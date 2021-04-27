package com.baedang.biz.freeboard.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.freeboard.FreeBoardDAO;
import com.baedang.biz.freeboard.FreeBoardDTO;

@Repository
public class FreeBoardDAOImpl implements FreeBoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(FreeBoardDTO vo) {
		mybatis.insert("FreeBoardDAOTemp.insertBoard", vo);
	}
	
	public void updateBoard(FreeBoardDTO vo) {
		mybatis.update("FreeBoardDAOTemp.updateBoard", vo);
	}

	public void deleteBoard(FreeBoardDTO vo) {
		mybatis.delete("FreeBoardDAOTemp.deleteBoard", vo);
	}

	public FreeBoardDTO getBoard(FreeBoardDTO vo) {
		return mybatis.selectOne("FreeBoardDAOTemp.getBoard", vo);
	}
	
	public List<FreeBoardDTO> getBoardList(FreeBoardDTO vo) {
		
		//return myBatis.selectList("BoardDAOTemp.getBoardList", vo);
		if(vo.getSerachCondition().equals("TITLE")) {
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_T", vo);
		}else if(vo.getSerachCondition().equals("CONTENT")) {
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_C", vo);
		}else {
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_T", vo);
		}
	}

}
