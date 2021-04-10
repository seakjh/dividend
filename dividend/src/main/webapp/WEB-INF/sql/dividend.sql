--회원
create table member(	-- 한 회원에 대한 입력정보 테이블
	member_id					varchar2(20)		primary key,	--회원 아이디
	member_password				varchar2(20),			--회원 비밀번호
	member_name 				varchar2(20),			--회원 닉네임
	member_email				varchar2(40),			--회원 이메일
	member_regdate				date 			default sysdate,	--회원 가입일
	member_role				varchar2(10)		default 'user'	--회원 구분 (일반회원, 관리자) (user,admin)
);


--배당정보
create table dividend(		-- 한 기업에대한 배당정보
	corp_code		varchar2(10) 		primary key,	-- 기업 법인코드
	corp_name		varchar2(30),			-- 기업 이름
	corp_type		varchar2(20),			-- 코스피,코스닥
	corp_status		number,				-- 주식 현재가
	dividend_month		date,				-- 배당금 지급일?
	dividend_money			number,				-- 배당금
	dividend_rate		number(15, 2),				-- 수익(%)
	oneyearago		number,				-- 1년전 배당금 정보
	twoyearago		number,				-- 2년전 배당금정보
	threeyearago		number				-- 3년전 배당금정보
);

insert into dividend values('017390', '서울가스', '코스피', 90500, to_date('2020/12', 'yyyy/mm'), 16750, 18.51, 1750, 1750, 1750);
insert into dividend values('016360', '삼성증권', '코스피', 41800, to_date('2020/12', 'yyyy/mm'), 2200, 5.26, 1700, 1400, 1000);


select * from dividend order by dividend_money desc;

select corp_code, corp_name, corp_type, corp_status, to_char(dividend_month, 'yyyy/mm') as dividend_month, dividend_money, dividend_rate, oneyearago, twoyearago, threeyearago
from dividend
order by dividend_money desc;


drop table dividend purge;

--관심종목
create table cart(
	cart_seq		number		primary key,	-- 관심종목에 대한 번호
	member_id		varchar2(20)		-- 관심종목에대한 회원아이디
	corp_num	number				-- 기업 법인번호
);

--게시판
create table freeboard(
	frboard_seq		number 	primary key,		-- 게시글 번호
	member_id		varchar2(16),			-- 게시글 입력한 id
	frboard_title		varchar2(100),			-- 게시글 제목
	frboard_content		clob,				-- 게시글 내용
	frboard_count		number default 0,			-- 게시글 조회수
	frboard_regdate		date default sysdate,		-- 게시글 작성일자
	frboard_img		blob,				-- 게시글에 올린 사진,이미지 파일명
	frboard_re_seq		number,				-- 댓글 번호
	frboard_re_ref		varchar2(2000)			-- 댓글 내용
);

create table reple (
	re_seq		number primary key	-- 댓글번호
	frboard_seq	number forgin key		-- 댓글이 달린 게시글을 확인하기위한 
	member_id	varchar2(20)		-- 댓글을 단 회원의 아이디
	re_ref		varchar2(2000)		-- 댓글 내용
	re_regdate	date default sysdate	-- 댓글 작성일자
);