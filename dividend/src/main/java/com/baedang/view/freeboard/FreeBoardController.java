package com.baedang.view.freeboard;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.baedang.biz.freeboard.FreeBoardDTO;
import com.baedang.biz.freeboard.FreeBoardService;

@Controller
public class FreeBoardController {
	@Autowired
	private FreeBoardService boardService;
	
	@RequestMapping("/insertBoardForm.do")
	public String insertBoardForm() {
		return "freeboard/insertBoard";
	}
	
	//글 등록
	@RequestMapping("/insertBoard.do")
	public String insertBoard(FreeBoardDTO vo, HttpSession session) throws IOException {
		System.out.println("글 등록 기능 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
		/*
		 *  이클립스가 컴파일하는 경로로 잡히게 되므로 servers에서 
		 *  톰캣 overview에서 save modules without publishing 체크해야 우리가 원하는 경로로 들어온다.
		*/
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			System.out.println(fileName);
			uploadFile.transferTo(new File(fileSaveFolder+fileName));
		}
		
		boardService.insertBoard(vo);
		return "redirect:getBoardList.do";		
	}
	
	// 글 목록 으로 가기
	@RequestMapping(value = "/boardList.do", method = RequestMethod.GET )
	public String getBoardList() {
		return "freeboard/boardList";
	}	
	
	// 글 목록 검색
	@RequestMapping(value = "/boardList.do", method = RequestMethod.POST)
	public String getBoardList(FreeBoardDTO dto, Model model) {
		System.out.println("글 목록 검색 처리" + dto);
		// 검색 기능 추가 Null check
		
		
		 if(dto.getSerachCondition() == null) { dto.setSerachCondition("TITLE"); }
		 if(dto.getSerachKeyword() == null) { dto.setSerachKeyword("CONTENT"); }
		 
		List<FreeBoardDTO> boardList = boardService.getBoardList(dto);
		
		model.addAttribute("boardList", boardList);
		return "freeboard/boardList";
	}
	
/*
	// 글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") FreeBoardDTO dto) {
		System.out.println("글 수정 처리" + dto);
		
		boardService.updateBoard(dto);
		return "redirect:getBoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(FreeBoardDTO dto) {
		System.out.println("글 삭제 처리" + dto);
		
		boardService.deleteBoard(dto);
		return "redirect:getBoardList.do";
	}
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}
	
	
	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getBoard(FreeBoardDTO dto, Model model) {
		System.out.println("글 상세 조회 처리" + dto);
		
		FreeBoardDTO board = boardService.getBoard(dto);
		
		model.addAttribute("board", board);
		
		return "getBoard.jsp";				
	}	
	*/
}

