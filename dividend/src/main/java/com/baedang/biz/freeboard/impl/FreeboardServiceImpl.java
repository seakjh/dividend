package com.baedang.biz.freeboard.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.freeboard.FreeboardService;
import com.baedang.biz.freeboard.FreeboardVO;
import com.baedang.biz.freeboard.PagingVO;
import com.baedang.biz.freeboard.RepleVO;

@Service
public class FreeboardServiceImpl implements FreeboardService{


	@Autowired
	private FreeboardDAO freeboardDAO;
	
	@Override
	public void insertFreeBoard(FreeboardVO vo) {
		freeboardDAO.insertFreeBoard(vo);
	}
	
	@Override
	public int countBoard() {
		return freeboardDAO.countBoard();
	}

	@Override
	public List<FreeboardVO> getFreeBoardList(FreeboardVO vo) {
		List<FreeboardVO> list = freeboardDAO.getFreeBoardList(vo);
		return list;
	}

	@Override
	public FreeboardVO getFreeBoard(FreeboardVO vo) {
		return freeboardDAO.getFreeBoard(vo);
	}

	@Override
	public void getFreeboardCnt(FreeboardVO vo) {
		freeboardDAO.getFreeboardCnt(vo);
	};

	@Override
	public void updateFreeBoard(FreeboardVO vo) {
		freeboardDAO.updateFreeBoard(vo);
	}

	@Override
	public void deleteFreeBoard(FreeboardVO vo) {
		freeboardDAO.deleteFreeBoard(vo);
	} 

	@Override
	public void insertReple(RepleVO vo) {
		freeboardDAO.insertReple(vo);
	}

	@Override
	public List<RepleVO> repleview(RepleVO vo) {
		List<RepleVO> list = freeboardDAO.repleview(vo);
		return list;
	}
	
	@Override

	public void deletereple(RepleVO vo) {
		freeboardDAO.deletereple(vo);
	}

	public void updateCnt(FreeboardVO vo) {
		freeboardDAO.updateCnt(vo);
	}
	
	public void deleteboardreple(FreeboardVO vo) {
		freeboardDAO.deleteboardreple(vo);
	}
}
