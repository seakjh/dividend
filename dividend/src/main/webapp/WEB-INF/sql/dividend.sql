--회원
create table member(
	id							varchar2(20)		primary key,
	password				varchar2(20),
	name 					varchar2(20),
	email					varchar2(40),
	regdate					date 				default sysdate,
	role						varchar2(10)		default 'user'
);

--배당정보
create table dividend(
	corp_num				number 			primary key,
	corp_name			varchar2(30),
	corp_type				varchar2(20),
	corp_status			number,
	dividend_month	date,
	dividend				number,
	dividend_rate		number,
	oneyearago			number,
	twoyearago			number,
	threeyearago		number
);

--관심종목
create table cart(
	cart_seq				number				primary key,
	id							varchar2(20)
	corp_num				number
);

--게시판
create table board(
	board_seq				number 			primary key,
	id							varchar2(16),
	board_title			varchar2(100),
	board_content		clob,
	board_count			number default 0,
	regdate					date default sysdate,
	board_img			blob,
	board_re_seq		number,
	board_re_ref			varchar2(2000)
);