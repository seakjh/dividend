package com.baedang.biz.freeboard;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class FreeBoardDTO implements Serializable {
	private int frboard_seq;			// 게시글 번호
	private String member_id;			// 게시글 작성자ID
	private String frboard_title;		// 게시글 제목
	private String frboard_content;		// 게시글 내용
	private int frboard_count;			// 게시글 조회수
	private String frboard_regdate;		// 게시글 작성일
	private String frboard_img;			//파일이름
	private String serachCondition;		// 검색 분류
	private String serachKeyword;		// 검색어
	private MultipartFile uploadFile;	// 파일 업로드
	
	public FreeBoardDTO() {}
	
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

	public String getFrboard_regdate() {
		return frboard_regdate;
	}

	public void setFrboard_regdate(String frboard_regdate) {
		this.frboard_regdate = frboard_regdate;
	}
	
	public String getSerachCondition() {
		return serachCondition;
	}

	public void setSerachCondition(String serachCondition) {
		this.serachCondition = serachCondition;
	}

	public String getSerachKeyword() {
		return serachKeyword;
	}

	public void setSerachKeyword(String serachKeyword) {
		this.serachKeyword = serachKeyword;
	}

	public String getFrboard_img() {
		return frboard_img;
	}

	public void setFrboard_img(String frboard_img) {
		this.frboard_img = frboard_img;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	@Override
	public String toString() {
		String value = "FreeBoardDTO[frboard_seq = " +frboard_seq+ ",  member_id = " +member_id
				+ ", frboard_title = " +frboard_title+ ",  frboard_content = " +frboard_content+ ",  frboard_count = " +frboard_count
				+ ", frboard_regdate = "+frboard_regdate+"]";
		return value;
	}
	
	
}