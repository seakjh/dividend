package com.baedang.biz.cart.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.cart.CartService;
import com.baedang.biz.cart.CartVO;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);
	}

}
