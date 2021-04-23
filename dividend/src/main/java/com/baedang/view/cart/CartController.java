package com.baedang.view.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baedang.biz.cart.CartService;
import com.baedang.biz.cart.CartVO;
import com.baedang.biz.dividend.DividendService;
import com.baedang.biz.dividend.DividendVO;
import com.baedang.biz.member.MemberService;
import com.baedang.biz.member.MemberVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private DividendService dividendService;
	
	// 관심종목 추가
	@RequestMapping(value = "/insertCart.do", method = RequestMethod.POST)
	public String insertCart(@ModelAttribute CartVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		DividendVO dividend = (DividendVO)session.getAttribute("dividend");
		String member_id = (String)session.getAttribute("member_id");
		
		if (member == null || member_id == null) {
			return "redirect:/login.do";
		}
		
		vo.setMember(member);
		vo.setDividend(dividend);
		
		cartService.insertCart(vo);
		model.addAttribute("msg", "관심종목에 추가했습니다.");
		model.addAttribute("url", "/app");
		return "result/message";
	}
}
