package com.baedang.biz.dividend;

import java.util.List;

public interface DividendService {
	//등록
	//void insertDividend(DividendVO vo);
	
	//목록의 갯수 구하기
	public int getListCount();
	
	//목록 조회
	List<DividendVO> getDividendList(DividendVO vo);
	
	//상세 조회
	DividendVO getDividend(DividendVO vo);
	
	//수정
	//void updateDividend(DividendVO vo);
	
	//삭제
	//void deleteDividend(DividendVO vo);
}
