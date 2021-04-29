package com.baedang.biz.freeboard.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.freeboard.FreeboardVO;
import com.baedang.biz.freeboard.PagingVO;
import com.baedang.biz.freeboard.RepleVO;

@Repository
public class FreeboardDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertFreeBoard(FreeboardVO vo) {
		mybatis.insert("FreeBoardDAOTemp.insertBoard", vo);
	}
	
	public void updateFreeBoard(FreeboardVO vo) {
		mybatis.update("FreeBoardDAOTemp.updateBoard", vo);
	}

	public void deleteFreeBoard(FreeboardVO vo) {
		System.out.println(vo);
		mybatis.delete("FreeBoardDAOTemp.deleteBoard", vo);
	}
	public FreeboardVO getFreeBoard(FreeboardVO vo) {
		return mybatis.selectOne("FreeBoardDAOTemp.getBoard", vo);
	}
	public int countBoard() {
		return mybatis.selectOne("FreeBoardDAOTemp.countBoard");
	}
	
	public List<FreeboardVO> getFreeBoardList(FreeboardVO vo) {
		//return mybatis.selectList("FreeBoardDAOTemp.getBoardList", vo);
		//일반적인 리스트 출력
		
		if (vo.getSearchCondition().equals("frboard_title")) {
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_T", vo);
		}
		else if (vo.getSearchCondition().equals("frboard_content")) {
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_C", vo);
		}else{
			return mybatis.selectList("FreeBoardDAOTemp.getBoardList_T", vo);
		}
	}
	public void getFreeboardCnt(FreeboardVO vo) {
		mybatis.update("FreeBoardDAOTemp.updateCnt", vo);
	}
	
	public void insertReple(RepleVO vo) {
		mybatis.insert("FreeBoardDAOTemp.insertReple", vo);
	}

	public List<RepleVO> repleview(RepleVO vo) {
		return mybatis.selectList("FreeBoardDAOTemp.reple", vo);
	}
	
	public void deletereple(RepleVO vo) {
		mybatis.delete("FreeBoardDAOTemp.deletereple", vo);
	}
	
	public void updateCnt(FreeboardVO vo) {
		mybatis.update("FreeBoardDAOTemp.updateCnt", vo);
	}
	
	public void deleteboardreple(FreeboardVO vo) {
		mybatis.delete("FreeBoardDAOTemp.deleteboardreple", vo);
	}
}
