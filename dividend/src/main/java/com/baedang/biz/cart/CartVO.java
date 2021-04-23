package com.baedang.biz.cart;

import com.baedang.biz.dividend.DividendVO;
import com.baedang.biz.member.MemberVO;

public class CartVO {
	private int cart_seq;
	private MemberVO member;
	private DividendVO dividend;
	
	public int getCart_seq() {
		return cart_seq;
	}
	public void setCart_seq(int cart_seq) {
		this.cart_seq = cart_seq;
	}
	public MemberVO getMember() {
		return member;
	}
	public void setMember(MemberVO member) {
		this.member = member;
	}
	public DividendVO getDividend() {
		return dividend;
	}
	public void setDividend(DividendVO dividend) {
		this.dividend = dividend;
	}
	
}
