package com.baedang.biz.freeboard;

import java.util.List;


public interface FreeBoardDAO{
	

	public void insertBoard(FreeBoardDTO dto);

	public void updateBoard(FreeBoardDTO dto) ;

	public void deleteBoard(FreeBoardDTO dto);

	public FreeBoardDTO getBoard(FreeBoardDTO dto) ;

	public List<FreeBoardDTO> getBoardList(FreeBoardDTO dto);

}
