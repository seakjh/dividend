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

select * from member
where member_id = 'apple' and member_password = 'apple';

insert into member(member_id, member_password, member_name, member_email, member_role) 
values('admin', 'admin1234', '관리자', 'lynn778@naver.com', 'admin');
insert into member(member_id, member_password, member_name, member_email) 
values('apple', 'apple', '김사과', 'apple@apple.com');
insert into member(member_id, member_password, member_name, member_email) 
values('asdf', 'asdf', 'asdf', 'asdf@asdf.com');
insert into member(member_id, member_password, member_name, member_email) 
values('asdf1', 'asdf1', 'asdf1', 'asdf@asdf.com');
insert into member(member_id, member_password, member_name, member_email) 
values('asdf2', 'asdf2', 'asdf2', 'asdf@asdf.com');

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

--

insert into dividend values('017390', '서울가스', '코스피', 90500, to_date('2020/12', 'yyyy/mm'), 16750, 18.51, 1750, 1750, 1750);
insert into dividend values('168490', '한국패러랠', '코스피', 1940, to_date('2020/12', 'yyyy/mm'), 235, 12.11, 165, 200, 205);
insert into dividend values('003545', '대신증권우', '코스피', 14000, to_date('2020/12', 'yyyy/mm'), 1250, 8.93, 1050, 670, 660);
insert into dividend values('003547', '대신증권2우B스', '코스피', 13700, to_date('2020/12', 'yyyy/mm'), 1200, 8.76, 1000, 620, 610);
insert into dividend values('140910', '에이리츠', '코스피', 7870, to_date('2020/12', 'yyyy/mm'), 674, 8.57, 373, 277, 86);
insert into dividend values('008110', '대동전자', '코스피', 6570, to_date('2020/12', 'yyyy/mm'), 500, 7.61, 0, 0, 0);
insert into dividend values('005945', 'NH투자증권우', '코스피', 9980, to_date('2020/12', 'yyyy/mm'), 750, 7.51, 550, 550, 550);
insert into dividend values('000700', '유수홀딩스', '코스피', 6850, to_date('2020/12', 'yyyy/mm'), 500, 7.3, 0, 0, 0);
insert into dividend values('003540', '대신증권', '코스피', 16800, to_date('2020/12', 'yyyy/mm'), 1200, 7.14, 1000, 620, 610);
insert into dividend values('282690', '동아타이어', '코스피', 11350, to_date('2020/12', 'yyyy/mm'), 800, 7.05, 500, 300, 0);
insert into dividend values('008560', '메리츠증권', '코스피', 4610, to_date('2020/12', 'yyyy/mm'), 320, 6.94, 200, 200, 200);
insert into dividend values('000060', '메리츠화재', '코스피', 18650, to_date('2020/12', 'yyyy/mm'), 1280, 6.86, 850, 820, 1140);
insert into dividend values('005960', '동부건설', '코스피', 13650, to_date('2020/12', 'yyyy/mm'), 900, 6.59, 700, 300, 0);
insert into dividend values('007340', '디티알오토모티브', '코스피', 30600, to_date('2020/12', 'yyyy/mm'), 2000, 6.54, 1500, 1000, 700);
insert into dividend values('122900', '아이마켓코리아', '코스피', 9280, to_date('2020/12', 'yyyy/mm'), 600, 6.47, 600, 450, 350);
insert into dividend values('088980', '맥쿼리인프라', '코스피', 11800, to_date('2020/12', 'yyyy/mm'), 719, 6.09, 698, 621, 249);
insert into dividend values('033780', 'KT&G', '코스피', 81200, to_date('2020/12', 'yyyy/mm'), 4800, 5.91, 4400, 4000, 4000);
insert into dividend values('001275', '부국증권우', '코스피', 21150, to_date('2020/12', 'yyyy/mm'), 1250, 5.91, 1250, 1250, 1250);
insert into dividend values('078935', 'GS우', '코스피', 33000, to_date('2020/12', 'yyyy/mm'), 1950, 5.91, 1950, 1950, 1850);
insert into dividend values('000815', '삼성화재우', '코스피', 150000, to_date('2020/12', 'yyyy/mm'), 8805, 5.87, 8505, 11505, 10005);
insert into dividend values('100250', '진양홀딩스', '코스피', 2910, to_date('2020/12', 'yyyy/mm'), 170, 5.84, 170, 150, 140);
insert into dividend values('015360', '예스코홀딩스', '코스피', 34250, to_date('2020/12', 'yyyy/mm'), 2000, 5.84, 1750, 1500, 1500);
insert into dividend values('003410', '쌍용C&E', '코스피', 7610, to_date('2020/12', 'yyyy/mm'), 440, 5.78, 420, 370, 214);
insert into dividend values('004800', '효성', '코스피', 86600, to_date('2020/12', 'yyyy/mm'), 5000, 5.77, 5000, 5000, 5000);
insert into dividend values('094800', '맵스리얼티1', '코스피', 4360, to_date('2020/12', 'yyyy/mm'), 250, 5.73, 247, 212, 226);
insert into dividend values('005940', 'NH투자증권', '코스피', 12250, to_date('2020/12', 'yyyy/mm'), 700, 5.71, 500, 500, 500);
insert into dividend values('001750', '한양증권', '코스피', 13150, to_date('2020/12', 'yyyy/mm'), 750, 5.7, 350, 250, 350);
insert into dividend values('175330', 'JB금융지주', '코스피', 6600, to_date('2020/12', 'yyyy/mm'),374 , 5.67, 300, 180, 100);
insert into dividend values('138040', '메리츠금융지주', '코스피', 16000, to_date('2020/12', 'yyyy/mm'), 900, 5.62, 550, 470, 520);
insert into dividend values('002960', '한국쉘석유', '코스피', 254000, to_date('2020/12', 'yyyy/mm'), 14000, 5.51, 16000, 19000, 17000);
insert into dividend values('030610', '교보증권', '코스피', 8410, to_date('2020/12', 'yyyy/mm'), 450, 5.35, 400, 350, 300);
insert into dividend values('003690', '코리안리', '코스피', 8480, to_date('2020/12', 'yyyy/mm'), 450, 5.31, 500, 275, 300);
insert into dividend values('007590', '동방아그로', '코스피', 7010, to_date('2020/12', 'yyyy/mm'), 370, 5.28, 250, 250, 250);
insert into dividend values('029780', '삼성카드', '코스피', 34150, to_date('2020/12', 'yyyy/mm'), 1800, 5.27, 1600, 1600, 1500);
insert into dividend values('016360', '삼성증권', '코스피', 41800, to_date('2020/12', 'yyyy/mm'), 2200, 5.26, 1700, 1400, 1000);
insert into dividend values('000155', '두산우', '코스피', 39600, to_date('2020/12', 'yyyy/mm'), 2050, 5.18, 5250, 5250, 5150);
insert into dividend values('00088K', '한화3우B', '코스피', 14500, to_date('2020/12', 'yyyy/mm'), 750, 5.17, 750, 595, 646);
insert into dividend values('024110', '기업은행', '코스피', 9160, to_date('2020/12', 'yyyy/mm'), 471, 5.14, 670, 690, 617);
insert into dividend values('015760', '한국전력', '코스피', 23850, to_date('2020/12', 'yyyy/mm'), 1216, 5.1, 0, 0, 790);
insert into dividend values('002460', '화성산업', '코스피', 12750, to_date('2020/12', 'yyyy/mm'), 650, 5.1, 500, 930, 890);
insert into dividend values('002990', '금호산업', '코스피', 9890, to_date('2020/12', 'yyyy/mm'), 500, 5.06, 500, 500, 500);
insert into dividend values('035000', '지투알', '코스피', 6040, to_date('2020/12', 'yyyy/mm'), 300, 4.97, 300, 250, 250);
insert into dividend values('000480', ' 조선내화', '코스피', 85,000 ,to_date('2020/45', 'yyyy/mm'), 4200, 4.94, 4000, 4000, 3500);
insert into dividend values('001500', '현대차증권', '코스피',	13,700, to_date('2020/12', 'yyyy/mm'),	675, 4.93, 600, 450, 400);
insert into dividend values('017940', 'E1', '코스피', 44,700, to_date('2020/12', 'yyyy/mm'), 2200,4.92,2200,2000,2000);
insert into dividend values('092230', 'KPX홀딩스', '코스피', 63,000, to_date('2020/12', 'yyyy/mm'),	3100, 4.92, 2600, 2600, 3850	);
insert into dividend values('078930', 'GS', '코스피', 39,050	, to_date('2020/12', 'yyyy/mm'),1900, 4.87, 1900, 1900, 1800);
insert into dividend values('001270', '부국증권', '코스피', 24,750, to_date('2020/12', 'yyyy/mm'),1200, 4.85	, 1200, 1200,1200);
insert into dividend values('030200', 'KT', '코스피', 27,900, to_date('2020/12', 'yyyy/mm'), 1350, 4.84, 1100, 1100, 1000);
insert into dividend values('060980', '한라홀딩스	', '코스피', 41,350, to_date('2020/12', 'yyyy/mm'), 2000, 4.84, 2000, 2000, 1350);
insert into dividend values('082640', '동양생명', '코스피', 4,560, to_date('2020/12', 'yyyy/mm'), 220, 4.82, 230, 100, 360);
insert into dividend values('019440', '세아특수강', '코스피', 14,600, to_date('2020/12', 'yyyy/mm'), 700,	4.8, 900, 900, 750);
insert into dividend values('213500', '한솔제지', '코스피', 14,650, to_date('2020/12', 'yyyy/mm'), 700, 4.78, 600, 600, 600);
insert into dividend values('152550', '한국ANKOR유전', '코스피', 1,675, to_date('2020/12', 'yyyy/mm'), 80, 4.78, 185, 215, 265);
insert into dividend values('005830', 'DB손해보험', '코스피', 46,250, to_date('2020/12', 'yyyy/mm'), 2200, 4.76, 1500,	2000 ,2300);
insert into dividend values('005190', '동성화학', '코스피', 17,900, to_date('2020/12', 'yyyy/mm'), 850, 4.75, 600, 500, 300);
insert into dividend values('139130', 'DGB금융지주', '코스피', 8,220, to_date('2020/12', 'yyyy/mm'), 390, 4.74, 410, 360, 340);
insert into dividend values('138930', 'BNK금융지주', '코스피', 6,760, to_date('2020/12', 'yyyy/mm'), 320, 4.73, 360, 300, 230);
insert into dividend values('034590', '인천도시가스', '코스피', 26,500	, to_date('2020/12', 'yyyy/mm'), 1250, 4.72, 1250, 1250, 1250);
insert into dividend values('000810', '삼성화재', '코스피', 189,500, to_date('2020/12', 'yyyy/mm'), 8800, 4.64, 8500, 11500, 10000);
insert into dividend values('117580', '대성에너지	', '코스피', 5,540, to_date('2020/12', 'yyyy/mm'),	250, 4.51, 250, 250	, 250);
insert into dividend values('001725', '신영증권우	', '코스피', 56,600, to_date('2020/12', 'yyyy/mm'), 2550, 4.51, 2800,	2800, 2500);
insert into dividend values('123890', '한국자산신탁', '코스피', 4,890, to_date('2020/12', 'yyyy/mm'), 220, 4.5	, 182, 166, 151);
insert into dividend values('016610', 'DB금융투자', '코스피', 6,680, to_date('2020/12', 'yyyy/mm'),	300, 4.49, 250, 250	, 100);
insert into dividend values('004970', '신라교역', '코스피', 11,150, to_date('2020/12', 'yyyy/mm'), 500, 4.48, 500, 500, 500);
insert into dividend values('069260', '휴켐스', '코스피', 22,450, to_date('2020/12', 'yyyy/mm'), 1000, 4.45, 1000, 1200	, 1500);
insert into dividend values('000650', '천일고속', '코스피', 67,500, to_date('2020/12', 'yyyy/mm'), 3000, 4.44, 5000, 6000, 15300);
insert into dividend values('003465', '유화증권우	', '코스피', 2,700, to_date('2020/12', 'yyyy/mm'), 120, 4.44,	 130, 160	, 130);
insert into dividend values('086790', '하나금융지주', '코스피', 41,650	, to_date('2020/12', 'yyyy/mm'), 1850, 4.44, 2100, 1900, 1550);
insert into dividend values('100840', 'SNT에너지	', '코스피', 18,300, to_date('2020/12', 'yyyy/mm'), 800, 4.37, 800, 0, 0);
insert into dividend values('071055', '한국금융지주우', '코스피', 70,100, to_date('2020/12', 'yyyy/mm'), 3062, 4.37, 2962, 1862,	1662);
insert into dividend values('001720', '신영증권', '코스피', 57,500, to_date('2020/12', 'yyyy/mm'), 2500, 4.35	,2750, 2750, 2450);
insert into dividend values('267290', '경동도시가스', '코스피', 20,150	, to_date('2020/12', 'yyyy/mm'), 875, 4.34, 875, 700, 600);
insert into dividend values('004255', 'NPC우', '코스피', 2,435, to_date('2020/12', 'yyyy/mm'), 105,	4.31, 105, 100, 95);
insert into dividend values('095570', 'AJ네트웍스	', '코스피', 4,870, to_date('2020/12', 'yyyy/mm'), 210, 4.31,	300, 100,	86);
insert into dividend values('102260', '동성코퍼레이션', '코스피', 5,850, to_date('2020/12', 'yyyy/mm'), 250, 4.27, 200,	200, 200);
insert into dividend values('001450', '현대해상', '코스피', 23,450, to_date('2020/12', 'yyyy/mm'), 1000, 4.26, 880, 1130, 1500);
insert into dividend values('00680K', '미래에셋증권2우B', '코스피', 4,725, to_date('2020/12', 'yyyy/mm'), 200, 4.23, 260, 220, 0);
insert into dividend values('008060', '대덕', '코스피', 7,100	, to_date('2020/12', 'yyyy/mm'), 300, 4.22, 300, 300, 300);
insert into dividend values('204210', '모두투어리츠', '코스피', 3,565, to_date('2020/12', 'yyyy/mm'), 150, 4.21, 168, 82, 76);
insert into dividend values('025000', 'KPX케미칼	', '코스피', 65,700, to_date('2020/12', 'yyyy/mm'), 2750, 4.19, 2500, 2000, 2000);
insert into dividend values('001800', '오리온홀딩스', '코스피', 15,700	, to_date('2020/12', 'yyyy/mm'), 650, 4.14, 650, 650, 600);
insert into dividend values('078000', '텔코웨어', '코스피', 11,650, to_date('2020/12', 'yyyy/mm'), 480, 4.12, 550, 650, 580);
insert into dividend values('005305', '롯데칠성우	', '코스피', 66,100, to_date('2020/12', 'yyyy/mm'), 2705, 4.09, 2705, 2705, 3305);
insert into dividend values('011785', '금호석유우	', '코스피', 105,000, to_date('2020/12', 'yyyy/mm'), 4250, 4.05, 1550, 1400, 1050);
insert into dividend values('130660', '한전산업', '코스피', 5,150, to_date('2020/12', 'yyyy/mm'), 208, 4.04, 227, 169, 198);
insert into dividend values('000150', '두산', '코스피', 49,700, to_date('2020/12', 'yyyy/mm'), 2000, 4.02, 5200, 5200, 5100);
insert into dividend values('010770', '평화홀딩스	', '코스피', 3,735, to_date('2020/12', 'yyyy/mm'), 150, 4.02, 150, 150, 150);
insert into dividend values('055550', '신한지주', '코스피', 37,400, to_date('2020/12', 'yyyy/mm'), 1500, 4.01,	 1850, 1600, 1450);
insert into dividend values('003460', '유화증권', '코스피', 2,745, to_date('2020/12', 'yyyy/mm'), 110, 4.01, 120, 150, 120);
insert into dividend values('003570', 'SNT중공업	', '코스피', 7,520, to_date('2020/12', 'yyyy/mm'), 300, 3.99,	 300, 195	,0);
insert into dividend values('003300', '한일홀딩스	', '코스피', 12,800, to_date('2020/12', 'yyyy/mm'), 510, 3.98, 460, 440, 360);
insert into dividend values('005935', '삼성전자우	', '코스피', 75,200, to_date('2020/12', 'yyyy/mm'), 2995, 3.98, 1417, 1417, 851);
insert into dividend values('053210', '스카이라이프', '코스피', 8,880, to_date('2020/12', 'yyyy/mm'), 350, 3.94, 350, 350, 350);
insert into dividend values('023150', 'MH에탄올', '코스피',	8,890, to_date('2020/12', 'yyyy/mm'), 350, 3.94, 350, 350, 350);
insert into dividend values('000087', '하이트진로2우B', '코스피', 20,350, to_date('2020/12', 'yyyy/mm'), 800, 3.93, 750, 850, 850);
insert into dividend values('344820', '케이씨씨글라스', '코스피', 53,600, to_date('2020/12', 'yyyy/mm'), 2100, 3.92, 0, 0, 0);
insert into dividend values('019685', '대교우B', '코스피', 2,825, to_date('2020/12', 'yyyy/mm'), 110, 3.89, 180, 220, 250);
insert into dividend values('039570', 'HDC아이콘트롤스', '코스피', 10,300, to_date('2020/12', 'yyyy/mm'), 400, 3.88, 350, 350, 250);


--

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
	cart_seq			number			primary key,	-- 관심종목에 대한 번호
	member_id		varchar2(20)	,					-- 관심종목에대한 회원아이디
	corp_code			varchar2(10)							-- 기업 법인번호
);

select * from cart;

DELETE FROM cart 
WHERE cart_seq = 3

insert into cart(cart_seq, member_id, corp_code) 
values((select nvl(max(cart_seq), 0)+1 from cart), 'asdf', '039570')

SELECT
    c.cart_seq AS cart_seq, 
    c.member_id AS member_id,
    d.corp_code As corp_code,
    m.member_name AS member_name, 
    d.corp_name AS corp_name,
    d.corp_type, 
    d.corp_status,
    to_char(d.dividend_month, 'yyyy/mm') as dividend_month, 
    d.dividend_money, 
    d.dividend_rate, 
    d.oneyearago, 
    d.twoyearago, 
    d.threeyearago
FROM
    member m, dividend d, cart c
WHERE m.member_id = c.member_id
    AND d.corp_code = c.corp_code
    AND c.member_id = 'apple'
ORDER BY
    c.cart_seq



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
	re_seq		number primary key,	-- 댓글번호
	frboard_seq	number,		-- 댓글이 달린 게시글을 확인하기위한 
	member_id	varchar2(20),		-- 댓글을 단 회원의 아이디
	re_ref		varchar2(2000)	,	-- 댓글 내용
	re_regdate	date default sysdate	-- 댓글 작성일자
);