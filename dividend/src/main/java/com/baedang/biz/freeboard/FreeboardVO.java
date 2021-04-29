package com.baedang.biz.freeboard;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class FreeboardVO {

	private int frboard_seq;
	private String member_id;
	private String frboard_title;
	private String frboard_content;
	private int frboard_count;
	private Date frboard_regdate;
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile uploadFile;
	private String frboard_sname;
	private int start, end;
	
	
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
	public String getFrboard_title() {
		return frboard_title;
	}
	public void setFrboard_title(String frboard_title) {
		this.frboard_title = frboard_title;
	}
	public String getFrboard_content() {
		return frboard_content;
	}
	public void setFrboard_content(String frboard_content) {
		this.frboard_content = frboard_content;
	}
	public int getFrboard_count() {
		return frboard_count;
	}
	public void setFrboard_count(int frboard_count) {
		this.frboard_count = frboard_count;
	}
	public Date getFrboard_regdate() {
		return frboard_regdate;
	}
	public void setFrboard_regdate(Date frboard_regdate) {
		this.frboard_regdate = frboard_regdate;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getFrboard_sname() {
		return frboard_sname;
	}
	public void setFrboard_sname(String frboard_sname) {
		this.frboard_sname = frboard_sname;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	@Override
	public String toString() {
		String value = "freeboardVO [frboard_seq = "+frboard_seq+", member_id = "+member_id + ", frboard_title = "+frboard_title+
				", frboard_content = "+frboard_content+", frboard_count = "+frboard_count+", frboard_regdate = "+frboard_regdate+"]";
		
		return value;
	}
}
