package com.baedang.biz.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baedang.biz.cart.CartService;
import com.baedang.biz.cart.CartVO;
import com.baedang.biz.dividend.DividendVO;
import com.baedang.biz.member.MemberVO;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);
	}
	
    // 관심 목록
    public List<CartVO> getCartList(CartVO vo) {
        return cartDAO.getCartList(vo);
    }
    
    //  확인
    public int countCart(DividendVO dividend, MemberVO member) {
        return cartDAO.countCart(dividend, member);
    }
    
    // 변경
    public void updateCart(CartVO vo) {
    	cartDAO.updateCart(vo);
    }

	@Override
	public CartVO getCart(CartVO vo) {
		return cartDAO.getCart(vo);
	}

	@Override
	public void deleteCart(CartVO vo) {
		cartDAO.deleteCart(vo);
	}
	
}
