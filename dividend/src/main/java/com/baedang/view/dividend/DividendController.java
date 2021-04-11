package com.baedang.view.dividend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.baedang.biz.dividend.DividendService;
import com.baedang.biz.dividend.DividendVO;


@Controller
@SessionAttributes("dividend") //모델에 저장할때 세션에도 자동으로 저장하라
public class DividendController {
	
	@Autowired
	private DividendService dividendService;
	
	@RequestMapping(value="/getDividendList.do", method = RequestMethod.GET)
	@ResponseBody
	public List<DividendVO> getDividendList(HttpServletRequest request, DividendVO vo) throws Exception {
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("CORP_NAME");
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
	
}
