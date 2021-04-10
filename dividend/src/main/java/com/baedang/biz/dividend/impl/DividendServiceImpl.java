package com.baedang.biz.dividend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.dividend.DividendService;
import com.baedang.biz.dividend.DividendVO;

@Service
public class DividendServiceImpl implements DividendService {
	
	@Autowired
	private DividendDAO dividendDAO;
	//private BoardDAOMyBatisFirst boardDAO;
	//private BoardDAO boardDAO;

	@Override
	public List<DividendVO> getDividendList(DividendVO vo) {
		List<DividendVO> list = dividendDAO.getDividendList(vo);
		return list;
	}

	@Override
	public DividendVO getDividend(DividendVO vo) {
		return dividendDAO.getDividend(vo);
	}
}
