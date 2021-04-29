package com.baedang.view.freeboard;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.baedang.biz.freeboard.PagingVO;
import com.baedang.biz.freeboard.FreeboardService;
import com.baedang.biz.freeboard.FreeboardVO;
import com.baedang.biz.freeboard.RepleVO;

@Controller
@SessionAttributes("reple")
public class FreeboardController {

	@Autowired
	private FreeboardService freeboardservice;
	
	@RequestMapping("/insertboardform.do")
	public String insertFreeBoardForm() {

		return "freeboard/insertBoard";	
	}
	
	//글 등록
	@RequestMapping("/insertBoard.do")
	public String insertFreeBoard(FreeboardVO vo, HttpSession session) throws IOException {
		System.out.println("글 등록 기능 처리" );
	
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/resources/boardUpload/");
		
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			System.out.println(fileName);
			uploadFile.transferTo(new File(fileSaveFolder+fileName));
			vo.setFrboard_sname(fileName);
		}else {
			vo.setFrboard_sname("");
		}

		freeboardservice.insertFreeBoard(vo);
		return "redirect:getBoardList.do";		
	}
	
	@RequestMapping("/updateBoardForm.do")
	public String updateFreeBoardForm(@ModelAttribute("freeboard") FreeboardVO vo) {
		//이전의 값을 유지하고 클라이언트에게 받은 값을 업데이트
		System.out.println("수정 폼 action 처리" +vo.getFrboard_seq() + vo.getMember_id());
		
		
		return "freeboard/freeboardupdateform";		
	}
	//글 수정
	@RequestMapping("/updateBoard.do")
	public String updateFreeBoard(@ModelAttribute("freeboard") FreeboardVO vo) {
		//이전의 값을 유지하고 클라이언트에게 받은 값을 업데이트
		System.out.println("수정 기능 처리" + vo);
		
		freeboardservice.updateFreeBoard(vo);
		return "redirect:getBoardList.do";		
	}
	
	//글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteFreeBoard(FreeboardVO vo) {
		System.out.println("삭제 기능 처리" + vo);
		freeboardservice.deleteboardreple(vo);
		freeboardservice.deleteFreeBoard(vo);
		return "redirect:getBoardList.do";		
	}
	
	@ModelAttribute("conditionMap") //스태틱방식 필요할때 갖다쓰기
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "frboard_title");
		conditionMap.put("내용", "frboard_content");
		return conditionMap;
	}
	
	//글 목록 검색
	@RequestMapping("/getBoardList.do")
	public String getFreeBoardList(FreeboardVO vo, Model model, PagingVO paging
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		
	
		System.out.println("글 목록 검색 처리");
		//검색 기능 추가 Null check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("frboard_title");
		}
		
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		int total = freeboardservice.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}

		paging = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		vo.setEnd(paging.getEnd());
		vo.setStart(vo.getStart());
		
		List<FreeboardVO> freeboardList = freeboardservice.getFreeBoardList(vo);
		model.addAttribute("paging", paging);
		model.addAttribute("freeboardList", freeboardList);
		
		return "freeboard/getBoardList";		
	}
	
	//글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getFreeBoard(FreeboardVO vo, RepleVO replevo, Model model, HttpSession session) {
		System.out.println(vo.getMember_id());
		System.out.println(session.getAttribute("member_id"));
		 if(!(vo.getMember_id().equals(session.getAttribute("member_id")))) {
			 System.out.println("조회수 증가 처리"); 
			 freeboardservice.updateCnt(vo); 
		 }
		
		
		System.out.println("글 상세 조회 처리");
	
		
		FreeboardVO freeboard = freeboardservice.getFreeBoard(vo);
		List<RepleVO> reple = freeboardservice.repleview(replevo);
		model.addAttribute("freeboard", freeboard);
		model.addAttribute("reple", reple);
		/*
		 * String member_id = vo.getMember_id();
		 * if(!vo.getMember_id().equals(member_id)) {
		 * freeboardservice.getFreeboardCnt(vo); }
		 */
		return "freeboard/boardDetail";		
	}
	
	@RequestMapping("reple.do")
	public String insertReple(@ModelAttribute RepleVO vo, HttpSession session, @RequestParam(value="frboard_seq", required=false)String frboard_seq, Model model){
		System.out.println("댓글 등록 기능 처리" +vo );
		freeboardservice.insertReple(vo);
		return "redirect:getBoard.do?frboard_seq="+ frboard_seq+"&member_id="+vo.getMember_id();
	}
	
	//댓글 삭제
	@RequestMapping("/deletereple.do")
	public String deletereple(@ModelAttribute RepleVO vo) {
		System.out.println("댓글삭제 기능 처리" + vo);
		freeboardservice.deletereple(vo);
		return "redirect:getBoard.do?frboard_seq="+ vo.getFrboard_seq()+"&member_id="+vo.getMember_id();		
	}
	
	
}
