package com.baedang.biz.cart.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.cart.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//내 관심종목 추가하기
	public void insertCart(CartVO vo) {
		mybatis.insert("cartMapper.insertCart", vo);
	}
	
}
