package com.baedang.biz.freeboard.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.freeboard.FreeBoardDAO;
import com.baedang.biz.freeboard.FreeBoardDTO;
import com.baedang.biz.freeboard.FreeBoardService;

@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	
	
	
	@Autowired
	private FreeBoardDAO boardDAO;
	
	@Override
	public void insertBoard(FreeBoardDTO dto) {
		boardDAO.insertBoard(dto);
	}

	@Override
	public List<FreeBoardDTO> getBoardList(FreeBoardDTO dto) {
		List<FreeBoardDTO> list = boardDAO.getBoardList(dto);
		return list;
	}

	@Override
	public FreeBoardDTO getBoard(FreeBoardDTO dto) {
		FreeBoardDTO board = boardDAO.getBoard(dto);
		return board;
	}

	@Override
	public void updateBoard(FreeBoardDTO dto) {
		boardDAO.updateBoard(dto);

	}

	@Override
	public void deleteBoard(FreeBoardDTO dto) {
		boardDAO.deleteBoard(dto);

	}

}
