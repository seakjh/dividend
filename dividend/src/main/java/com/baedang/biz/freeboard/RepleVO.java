package com.baedang.biz.freeboard;

import java.util.Date;

public class RepleVO {
	private int re_seq;
	private int frboard_seq;
	private String member_id;
	private String re_ref;
	private Date re_regdate;
	
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public int getFrboard_seq() {
		return frboard_seq;
	}
	public void setFrboard_seq(int frboard_seq) {
		this.frboard_seq = frboard_seq;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(String re_ref) {
		this.re_ref = re_ref;
	}
	public Date getRe_regdate() {
		return re_regdate;
	}
	public void setRe_regdate(Date re_regdate) {
		this.re_regdate = re_regdate;
	}
	@Override
	public String toString() {
		String value = "repleVO [re_seq = "+re_seq+", frboard_seq = "+frboard_seq +
				", member_id = "+member_id+", getRe_ref = "+re_ref+"]";
		
		return value;
	}
	
	
}
