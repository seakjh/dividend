package com.baedang.view.board;

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
import org.springframework.web.multipart.MultipartFile;


@Controller
public class BoardController {
	
//	@Autowired
//	private BoardService boardService;
//	
//	//글 등록
//	@RequestMapping("/insertBoard.do")
//	public String insertBoard(BoardVO vo, HttpSession session) throws IOException {
//		System.out.println("글 등록 기능 처리");
//		
//		//파일 업로드 처리
//		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
//		/*
//		 *  이클립스가 컴파일하는 경로로 잡히게 되므로 servers에서 
//		 *  톰캣 overview에서 save modules without publishing 체크해야 우리가 원하는 경로로 들어온다.
//		*/
//		MultipartFile uploadFile = vo.getUploadFile();
//		if (!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			System.out.println(fileName);
//			uploadFile.transferTo(new File(fileSaveFolder+fileName));
//		}
//		
//		boardService.insertBoard(vo);
//		return "redirect:getBoardList.do";		
//	}
//	
//	//글 수정
//	@RequestMapping("/updateBoard.do")
//	public String updateBoard(BoardVO vo) {
//		System.out.println("수정 기능 처리");
//		boardService.updateBoard(vo);
//		return "redirect:getBoardList.do";		
//	}
//	
//	//글 삭제
//	@RequestMapping("/deleteBoard.do")
//	public String deleteBoard(BoardVO vo) {
//		System.out.println("삭제 기능 처리");
//		boardService.deleteBoard(vo);
//		return "redirect:getBoardList.do";		
//	}
	
//	@ModelAttribute("conditionMap")
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		return conditionMap;
//	}
	
	@RequestMapping(value="/getBoardList.do", method = RequestMethod.GET)
	public String loginView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "board/getBoardList";
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
