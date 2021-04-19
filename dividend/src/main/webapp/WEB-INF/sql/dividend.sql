--회원
create table member(	-- 한 회원에 대한 입력정보 테이블
	member_id					varchar2(20)		primary key,	--회원 아이디
	member_password				varchar2(20),			--회원 비밀번호
	member_name 				varchar2(20),			--회원 닉네임
	member_email				varchar2(40),			--회원 이메일
	member_regdate				date 			default sysdate,	--회원 가입일
	member_role				varchar2(10)		default 'user'	--회원 구분 (일반회원, 관리자) (user,admin)
);

select * from member;

insert into member(member_id, member_password, member_name, member_email, member_role) 
values('admin', 'admin1234', '관리자', 'lynn778@naver.com', 'admin');
insert into member(member_id, member_password, member_name, member_email) 
values('apple', 'apple', '김사과', 'apple@apple.com');

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
------------------------------------------------------------------------------------
insert into dividend values('017390', '서울가스', '코스피', 90500, to_date('2020/12', 'yyyy/mm'), 16750, 18.51, 1750, 1750, 1750);
insert into dividend values('016360', '삼성증권', '코스피', 41800, to_date('2020/12', 'yyyy/mm'), 2200, 5.26, 1700, 1400, 1000);

insert into dividend values('012700','리드코프','코스닥',8960 ,to_date('2020/12', 'yyyy/mm'),800 ,8.93,150,150,200);
insert into dividend values('078020','이베스트투자증권','코스닥',8040 ,to_date('2020/12', 'yyyy/mm'),550 ,6.84,345,485,485);
insert into dividend values('040420','정상제이엘에스','코스닥',6500 ,to_date('2020/12', 'yyyy/mm'),430 ,6.61,430,430,430);
insert into dividend values('225190','삼양옵틱스','코스닥',9870 ,to_date('2020/12', 'yyyy/mm'),600 ,6.08,1000,1100,1300);
insert into dividend values('085910','네오티스','코스닥',4300 ,to_date('2020/12', 'yyyy/mm'),250 ,5.81,250,250,350);
insert into dividend values('028150','GS홈쇼핑','코스닥',151700 ,to_date('2020/12', 'yyyy/mm'),8500 ,5.6,6500,7000,6500);
insert into dividend values('029960','코엔텍','코스닥',9140 ,to_date('2020/12', 'yyyy/mm'),510 ,5.58,540,400,25);
insert into dividend values('031330','에스에이엠티','코스닥',2920 ,to_date('2020/12', 'yyyy/mm'),150 ,5.14,140,130,110);
insert into dividend values('041520','이라이콤','코스닥',11800 ,to_date('2020/12', 'yyyy/mm'),600 ,5.09,100,400,200);
insert into dividend values('011040','경동제약','코스닥',10150 ,to_date('2020/12', 'yyyy/mm'),500 ,4.93,400,300,400);
insert into dividend values('065690','파커스','코스닥',3055 ,to_date('2020/12', 'yyyy/mm'),150 ,4.91,150,300,0);
insert into dividend values('094820','일진파워','코스닥',6150 ,to_date('2020/12', 'yyyy/mm'),300 ,4.88,300,330,220);
insert into dividend values('000440','중앙에너비스','코스닥',10000 ,to_date('2020/12', 'yyyy/mm'),480 ,4.8,160,160,176);
insert into dividend values('072870','메가스터디','코스닥',12550 ,to_date('2020/12', 'yyyy/mm'),600 ,4.78,450,400,236);
insert into dividend values('950190','미투젠','코스닥',24350 ,to_date('2020/12', 'yyyy/mm'),1152 ,4.73,0,0,0);
insert into dividend values('065710','서호전기','코스닥',21400 ,to_date('2020/12', 'yyyy/mm'),1000 ,4.67,1200,500,900);
insert into dividend values('091340','S&K폴리텍','코스닥',5370 ,to_date('2020/12', 'yyyy/mm'),250 ,4.66,0,0,0);
insert into dividend values('128660','피제이메탈','코스닥',2690 ,to_date('2020/12', 'yyyy/mm'),120 ,4.46,100,100,100);
insert into dividend values('004650','창해에탄올','코스닥',13650 ,to_date('2020/12', 'yyyy/mm'),600 ,4.4,600,600,600);
insert into dividend values('093920','서원인텍','코스닥',8000 ,to_date('2020/12', 'yyyy/mm'),350 ,4.38,300,300,300);
insert into dividend values('018120','진로발효','코스닥',31350 ,to_date('2020/12', 'yyyy/mm'),1350 ,4.31,1350,1200,1100);
insert into dividend values('036190','금화피에스시','코스닥',30750 ,to_date('2020/12', 'yyyy/mm'),1300 ,4.23,1300,1300,900);
insert into dividend values('115310','인포바인','코스닥',21300 ,to_date('2020/12', 'yyyy/mm'),900 ,4.22,900,950,1080);
insert into dividend values('046110','한일네트웍스','코스닥',6160 ,to_date('2020/12', 'yyyy/mm'),240 ,3.9,230,200,70);
insert into dividend values('225330','씨엠에스에듀','코스닥',6700 ,to_date('2020/12', 'yyyy/mm'),260 ,3.88,425,260,300);
insert into dividend values('036560','영풍정밀','코스닥',9060 ,to_date('2020/12', 'yyyy/mm'),350 ,3.86,300,250,200);
insert into dividend values('098660','에스티오','코스닥',2900 ,to_date('2020/12', 'yyyy/mm'),110 ,3.79,120,95,14);
insert into dividend values('049720','고려신용정보','코스닥',7320 ,to_date('2020/12', 'yyyy/mm'),275 ,3.76,250,220,200);
insert into dividend values('010470','오리콤','코스닥',5950 ,to_date('2020/12', 'yyyy/mm'),220 ,3.7,220,220,220);
insert into dividend values('068930','디지털대성','코스닥',8130 ,to_date('2020/12', 'yyyy/mm'),300 ,3.69,300,200,200);
insert into dividend values('069510','에스텍','코스닥',11150 ,to_date('2020/12', 'yyyy/mm'),400 ,3.59,600,500,500);
insert into dividend values('005160','동국산업','코스닥',3735 ,to_date('2020/12', 'yyyy/mm'),130 ,3.48,130,130,150);
insert into dividend values('067990','도이치모터스','코스닥',7180 ,to_date('2020/12', 'yyyy/mm'),245 ,3.42,0,0,0);
insert into dividend values('034950','한국기업평가','코스닥',88200 ,to_date('2020/12', 'yyyy/mm'),2907 ,3.3,8618,2360,2250);
insert into dividend values('039010','현대통신','코스닥',10700 ,to_date('2020/12', 'yyyy/mm'),350 ,3.27,300,300,200);
insert into dividend values('023760','한국캐피탈','코스닥',769 ,to_date('2020/12', 'yyyy/mm'),25 ,3.25,25,18,12);
insert into dividend values('054040','한국컴퓨터','코스닥',4620 ,to_date('2020/12', 'yyyy/mm'),150 ,3.25,130,100,120);
insert into dividend values('013120','동원개발','코스닥',5700 ,to_date('2020/12', 'yyyy/mm'),185 ,3.25,170,185,160);
insert into dividend values('221980','케이디켐','코스닥',15700 ,to_date('2020/12', 'yyyy/mm'),500 ,3.18,500,500,500);
insert into dividend values('092130','이크레더블','코스닥',22050 ,to_date('2020/12', 'yyyy/mm'),700 ,3.17,740,670,530);
insert into dividend values('140520','대창스틸','코스닥',3180 ,to_date('2020/12', 'yyyy/mm'),100 ,3.14,100,100,100);
insert into dividend values('096240','청담러닝','코스닥',25500 ,to_date('2020/12', 'yyyy/mm'),800 ,3.14,1000,800,800);
insert into dividend values('023770','플레이위드','코스닥',9900 ,to_date('2020/12', 'yyyy/mm'),300 ,3.03,0,0,0);
insert into dividend values('037350','성도이엔지','코스닥',6600 ,to_date('2020/12', 'yyyy/mm'),200 ,3.03,50,100,150);
insert into dividend values('037440','희림','코스닥',4950 ,to_date('2020/12', 'yyyy/mm'),150 ,3.03,150,100,100);
insert into dividend values('214370','케어젠','코스닥',66200 ,to_date('2020/12', 'yyyy/mm'),2000 ,3.02,2800,600,1200);
insert into dividend values('075130','플랜티넷','코스닥',6790 ,to_date('2020/12', 'yyyy/mm'),200 ,2.95,250,150,150);
insert into dividend values('023410','유진기업','코스닥',5800 ,to_date('2020/12', 'yyyy/mm'),170 ,2.93,150,150,150);
insert into dividend values('093190','빅솔론','코스닥',5170 ,to_date('2020/12', 'yyyy/mm'),150 ,2.9,190,180,150);
insert into dividend values('024880','케이피에프','코스닥',4490 ,to_date('2020/12', 'yyyy/mm'),130 ,2.89,160,160,150);
insert into dividend values('011560','세보엠이씨','코스닥',6940 ,to_date('2020/12', 'yyyy/mm'),200 ,2.88,150,300,250);
insert into dividend values('038390','레드캡투어','코스닥',21050 ,to_date('2020/12', 'yyyy/mm'),600 ,2.85,800,800,600);
insert into dividend values('013030','하이록코리아','코스닥',17600 ,to_date('2020/12', 'yyyy/mm'),500 ,2.84,500,500,400);
insert into dividend values('290120','대유에이피','코스닥',7080 ,to_date('2020/12', 'yyyy/mm'),200 ,2.83,200,200,0);
insert into dividend values('190650','코리아에셋투자증권','코스닥',10700 ,to_date('2020/03', 'yyyy/mm'),300 ,2.8,250,250,370);
insert into dividend values('045100','한양이엔지','코스닥',18000 ,to_date('2020/12', 'yyyy/mm'),500 ,2.78,450,400,300);
insert into dividend values('054540','삼영엠텍','코스닥',5440 ,to_date('2020/12', 'yyyy/mm'),150 ,2.76,100,60,50);
insert into dividend values('215000','골프존','코스닥',91000 ,to_date('2020/12', 'yyyy/mm'),2500 ,2.75,2050,1850,2400);
insert into dividend values('037330','인지디스플레','코스닥',3655 ,to_date('2020/12', 'yyyy/mm'),100 ,2.74,75,75,75);
insert into dividend values('090150','광진윈텍','코스닥',4400 ,to_date('2020/12', 'yyyy/mm'),120 ,2.73,100,50,30);
insert into dividend values('039240','경남스틸','코스닥',3750 ,to_date('2020/12', 'yyyy/mm'),100 ,2.67,90,70,70);
insert into dividend values('033500','동성화인텍','코스닥',13250 ,to_date('2020/12', 'yyyy/mm'),350 ,2.64,220,0,0);
insert into dividend values('017480','삼현철강','코스닥',5680 ,to_date('2020/12', 'yyyy/mm'),150 ,2.64,150,150,150);
insert into dividend values('054930','유신','코스닥',19200 ,to_date('2020/12', 'yyyy/mm'),500 ,2.6,0,0,200);
insert into dividend values('007330','푸른저축은행','코스닥',21150 ,to_date('2020/12', 'yyyy/mm'),550 ,2.6,550,550,550);
insert into dividend values('115500','케이씨에스','코스닥',8560 ,to_date('2020/12', 'yyyy/mm'),220 ,2.57,220,200,90);
insert into dividend values('230360','에코마케팅','코스닥',26250 ,to_date('2020/12', 'yyyy/mm'),670 ,2.55,335,195,63);
insert into dividend values('004780','대륙제관','코스닥',5950 ,to_date('2020/12', 'yyyy/mm'),150 ,2.52,100,80,100);
insert into dividend values('036640','HRS','코스닥',5960 ,to_date('2020/12', 'yyyy/mm'),150 ,2.52,0,30,80);
insert into dividend values('007680','엠투아이','코스닥',9990 ,to_date('2020/12', 'yyyy/mm'),250 ,2.5,140,371,20);
insert into dividend values('007680','대원','코스닥',10050 ,to_date('2020/12', 'yyyy/mm'),250 ,2.49,250,250,200);
insert into dividend values('027710','팜스토리','코스닥',2010 ,to_date('2020/12', 'yyyy/mm'),50 ,2.49,25,0,0);
insert into dividend values('110790','크리스에프앤씨','코스닥',29750 ,to_date('2020/12', 'yyyy/mm'),740 ,2.49,400,280,300);
insert into dividend values('003800','에이스침대','코스닥',44350 ,to_date('2020/12', 'yyyy/mm'),1100 ,2.48,1100,1000,660);
insert into dividend values('169330','엠브레인','코스닥',8910 ,to_date('2020/06', 'yyyy/mm'),220 ,2.47,140,200,213);
insert into dividend values('067920','이글루시큐리티','코스닥',6500 ,to_date('2020/12', 'yyyy/mm'),160 ,2.46,140,140,70);
insert into dividend values('264660','씨앤지하이테크','코스닥',14300 ,to_date('2020/12', 'yyyy/mm'),350 ,2.45,150,100,80);
insert into dividend values('079000','와토스코리아','코스닥',8200 ,to_date('2020/12', 'yyyy/mm'),200 ,2.44,200,200,189);
insert into dividend values('052330','코텍','코스닥',10450 ,to_date('2020/12', 'yyyy/mm'),250 ,2.39,400,400,300);
insert into dividend values('171120','라이온켐텍','코스닥',8400 ,to_date('2020/12', 'yyyy/mm'),200 ,2.38,146,163,244);
insert into dividend values('277410','인산가','코스닥',2100 ,to_date('2020/12', 'yyyy/mm'),50 ,2.38,30,20,16);
insert into dividend values('008370','원풍','코스닥',6820 ,to_date('2020/12', 'yyyy/mm'),160 ,2.35,150,150,171);
insert into dividend values('053050','지에스이','코스닥',1710 ,to_date('2020/12', 'yyyy/mm'),40 ,2.34,40,60,40);
insert into dividend values('133750','메가엠디','코스닥',4285 ,to_date('2020/12', 'yyyy/mm'),100 ,2.33,50,50,50);
insert into dividend values('136540','윈스','코스닥',17150 ,to_date('2020/12', 'yyyy/mm'),400 ,2.33,350,320,310);
insert into dividend values('011370','서한','코스닥',1720 ,to_date('2020/12', 'yyyy/mm'),40 ,2.33,30,40,40);
insert into dividend values('035890','서희건설','코스닥',1720 ,to_date('2020/12', 'yyyy/mm'),40 ,2.33,30,15,15);
insert into dividend values('109860','동일금속','코스닥',12950 ,to_date('2020/12', 'yyyy/mm'),300 ,2.32,280,230,140);
insert into dividend values('091700','파트론','코스닥',10850 ,to_date('2020/12', 'yyyy/mm'),250 ,2.3,350,200,175);
insert into dividend values('056190','에스에프에이','코스닥',41500 ,to_date('2020/12', 'yyyy/mm'),950 ,2.29,1056,1278,1245);
insert into dividend values('083930','아바코','코스닥',13150 ,to_date('2020/12', 'yyyy/mm'),300 ,2.28,300,200,0);
insert into dividend values('049960','쎌바이오텍','코스닥',19900 ,to_date('2020/12', 'yyyy/mm'),450 ,2.26,600,600,550);
insert into dividend values('131180','딜리','코스닥',1785 ,to_date('2020/12', 'yyyy/mm'),40 ,2.24,40,35,50);
insert into dividend values('225220','제놀루션','코스닥',15650 ,to_date('2020/12', 'yyyy/mm'),350 ,2.24,0,0,0);
insert into dividend values('079960','동양이엔피','코스닥',17900 ,to_date('2020/12', 'yyyy/mm'),400 ,2.23,300,300,300);
insert into dividend values('037460','삼지전자','코스닥',13550 ,to_date('2020/12', 'yyyy/mm'),300 ,2.21,140,140,120);
insert into dividend values('251970','펌텍코리아','코스닥',19550 ,to_date('2020/12', 'yyyy/mm'),430 ,2.2,330,0,0);
insert into dividend values('044340','위닉스','코스닥',23300 ,to_date('2020/12', 'yyyy/mm'),500 ,2.15,500,400,200);
insert into dividend values('040910','아이씨디','코스닥',16500 ,to_date('2020/12', 'yyyy/mm'),350 ,2.12,150,150,150);
insert into dividend values('016250','SGC이테크건설','코스닥',55300 ,to_date('2020/12', 'yyyy/mm'),1172 ,2.12,1172,781,586);



------------------------------------------------------------
select * from dividend order by dividend_money desc;

delete from DIVIDEND where corp_code = '012700';

select corp_code, corp_name, corp_type, corp_status, to_char(dividend_month, 'yyyy/mm') as dividend_month, dividend_money, dividend_rate, oneyearago, twoyearago, threeyearago
from dividend
order by dividend_money desc;


drop table dividend purge;
--------------------------------------------------------------------------------
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