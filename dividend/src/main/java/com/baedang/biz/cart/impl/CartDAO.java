package com.baedang.biz.cart.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baedang.biz.cart.CartVO;
import com.baedang.biz.dividend.DividendVO;
import com.baedang.biz.member.MemberVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//내 관심종목 추가하기
	public void insertCart(CartVO vo) {
		mybatis.insert("cartMapper.insertCart", vo);
	}
	
	// 관심종목 동일한 레코드 확인
	public int countCart(DividendVO dividend, MemberVO member) {
		CartVO cart = new CartVO();
		cart.setDividend(dividend);
		cart.setMember(member);
		return mybatis.selectOne("cartMapper.countCart", cart);
	}
	
	// 동일한 레코드 있을경우 같은내용으로 수정
	public void updateCart(CartVO vo) {
		mybatis.update("cartMapper.updateCart", vo);
	}
	
    // 목록
    public List<CartVO> getCartList(CartVO vo) {
        return mybatis.selectList("cartMapper.listCart", vo);
    }
    
    // 내 장바구니 한개 확인
    public CartVO getCart(CartVO vo) {
    	return mybatis.selectOne("cartMapper.getCart", vo);
    }
    
    // 관심종목 삭제
    public void deleteCart(CartVO vo) {
    	mybatis.delete("cartMapper.deleteCart", vo);
    }
    
}
