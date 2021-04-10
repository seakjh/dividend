package com.baedang.view.dividend;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

import com.baedang.biz.dividend.DividendService;
import com.baedang.biz.dividend.DividendVO;


@Controller
public class DividendController {
	
	@Autowired
	private DividendService dividendService;
	
	
//	@ModelAttribute("conditionMap")
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		return conditionMap;
//	}
	
	@RequestMapping(value="/getDividendList.do", method = RequestMethod.GET)
	@ResponseBody
	public List<DividendVO> getDividendList(HttpServletRequest request, DividendVO vo) throws Exception {
		List<DividendVO> list = dividendService.getDividendList(vo);
		return list;
	}
	
	//글 목록 검색
//	@RequestMapping("/getBoardList.do")
//	public String getBoardList(BoardVO vo, Model model) {
//		System.out.println("글 목록 검색 처리");
//		//검색 기능 추가 Null check
//		
//		if (vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		
//		if (vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
//		}
//		
//		
//		List<BoardVO> boardList = boardService.getBoardList(vo);
//		
//		model.addAttribute("boardList", boardList);
//		return "getBoardList.jsp";		
//	}
	
	//글 상세 조회
//	@RequestMapping("/getBoard.do")
//	public String getBoard(BoardVO vo, Model model) {
//		System.out.println("글 상세 조회 처리");
//		BoardVO board = boardService.getBoard(vo);
//		model.addAttribute("board", board);
//		return "getBoard.jsp";		
//	}
	
}
