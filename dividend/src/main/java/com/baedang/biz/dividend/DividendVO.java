package com.baedang.biz.dividend;

public class DividendVO {
	private String corp_code;
	private String corp_name;
	private String corp_type; 
	private int corp_status; 
	private String dividend_month;
	private int dividend_money;
	private double dividend_rate;
	private int oneyearago;
	private int twoyearago;
	private int threeyearago;
	private String searchCondition;
	private String searchKeyword;
	private int count;
	
	public String getCorp_code() {
		return corp_code;
	}
	public void setCorp_code(String corp_code) {
		this.corp_code = corp_code;
	}
	public String getCorp_name() {
		return corp_name;
	}
	public void setCorp_name(String corp_name) {
		this.corp_name = corp_name;
	}
	public String getCorp_type() {
		return corp_type;
	}
	public void setCorp_type(String corp_type) {
		this.corp_type = corp_type;
	}
	public int getCorp_status() {
		return corp_status;
	}
	public void setCorp_status(int corp_status) {
		this.corp_status = corp_status;
	}
	public String getDividend_month() {
		return dividend_month;
	}
	public void setDividend_month(String dividend_month) {
		this.dividend_month = dividend_month;
	}
	public int getDividend_money() {
		return dividend_money;
	}
	public void setDividend_money(int dividend_money) {
		this.dividend_money = dividend_money;
	}
	public double getDividend_rate() {
		return dividend_rate;
	}
	public void setDividend_rate(double dividend_rate) {
		this.dividend_rate = dividend_rate;
	}
	public int getOneyearago() {
		return oneyearago;
	}
	public void setOneyearago(int oneyearago) {
		this.oneyearago = oneyearago;
	}
	public int getTwoyearago() {
		return twoyearago;
	}
	public void setTwoyearago(int twoyearago) {
		this.twoyearago = twoyearago;
	}
	public int getThreeyearago() {
		return threeyearago;
	}
	public void setThreeyearago(int threeyearago) {
		this.threeyearago = threeyearago;
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
	public int getCount() {
		if (count == 0) {
			count = 10;
		}
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
//	public String toString() {
//		String value = "BoardVO [seq = "+seq+", title = "+title+", writer = "+writer+
//				", content = "+content+", regDate = "+regDate+", cnt = "+cnt+"]";
//		
//		return value;
//	}
}
