package com.baedang.view.dividend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.baedang.biz.dividend.DividendService;
import com.baedang.biz.dividend.DividendVO;

@Controller
@SessionAttributes("dividend") //모델에 저장할때 세션에도 자동으로 저장하라
public class DividendController {
	
	@Autowired
	private DividendService dividendService;
	
	@RequestMapping(value="/getDividendMain.do")
	public String getDividendMain() throws Exception {
		return "dividend/main";
	}
	
	//메인페이지 로딩과 동시에 ajax로 목록을 출력
	@RequestMapping(value="/getDividendList.do", method = RequestMethod.GET)
	@ResponseBody
	public List<DividendVO> getDividendList(@RequestParam("count") int count, Model model, DividendVO vo) throws Exception {
		vo.setCount(count);
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("");
		}
		
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		List<DividendVO> list = dividendService.getDividendList(vo);
		return list;
	}
	
	//목록 검색
	@RequestMapping(value = "/getDividendList.do", method = RequestMethod.POST)
	@ResponseBody
	public List<DividendVO> getDividendList(DividendVO vo, Model model) {
		//검색 기능 추가 Null check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("CORP_NAME");
		}
		
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		List<DividendVO> dividendList = dividendService.getDividendList(vo);
		//model.addAttribute("dividendList", dividendList);
		return dividendList;		
	}
	
	//상세 조회
	@RequestMapping("/getDividend.do")
	public String getDividend(DividendVO vo, Model model) {
		DividendVO dividend = dividendService.getDividend(vo);
		model.addAttribute("dividend", dividend);
		return "dividend/getDividend";
	}
	
	@ModelAttribute("conditionMap") //스태틱방식 필요할때 갖다쓰기
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("종목명", "CORP_NAME");
		conditionMap.put("종목코드", "CORP_CODE");
		return conditionMap;
	}
	
}
