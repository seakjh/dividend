package com.baedang.biz.cart;

import java.util.List;

import com.baedang.biz.dividend.DividendVO;
import com.baedang.biz.member.MemberVO;

public interface CartService {
	
	public void insertCart(CartVO vo);
	
	public List<CartVO> getCartList(CartVO vo);
	
	public int countCart(DividendVO dividend, MemberVO member);
	
	public void updateCart(CartVO vo);
	
	public CartVO getCart(CartVO vo);
	
	public void deleteCart(CartVO vo);
}
