package com.baedang.biz.freeboard;

import java.util.List;

import com.baedang.biz.freeboard.FreeboardVO;
import com.baedang.biz.freeboard.RepleVO;

public interface FreeboardService {
	//글 등록
	void insertFreeBoard(FreeboardVO vo);
	
	// 게시물 총 갯수
	public int countBoard();
	
	//글 목록 조회
	public List<FreeboardVO> getFreeBoardList(FreeboardVO vo);
	
	//글 상세 조회
	FreeboardVO getFreeBoard(FreeboardVO vo);
	
	
	void getFreeboardCnt(FreeboardVO vo);
	
	//글 수정
	void updateFreeBoard(FreeboardVO vo);
	
	//글 삭제
	void deleteFreeBoard(FreeboardVO vo);
	
	void insertReple(RepleVO vo);
	
	List<RepleVO> repleview(RepleVO vo);
	
	void deletereple(RepleVO vo);
	
	void updateCnt(FreeboardVO vo);
	
	void deleteboardreple(FreeboardVO vo);
	
}
