package com.baedang.biz.freeboard;

import java.util.List;

public interface FreeBoardService {
	
	// 글 등록
	void insertBoard(FreeBoardDTO dto);
	
	// 글 목록 조회
	List<FreeBoardDTO> getBoardList(FreeBoardDTO dto);
	
	// 글 상세 조회
	FreeBoardDTO getBoard(FreeBoardDTO dto);
	
	// 글 수정
	void updateBoard(FreeBoardDTO dto);
	
	// 글 삭제FreeBoardDTO
	void deleteBoard(FreeBoardDTO dto);
}
