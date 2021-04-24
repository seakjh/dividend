package com.baedang.view.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	// 관심종목 추가
	@RequestMapping(value = "/insertCart.do", method = RequestMethod.POST)
	public String insertCart(@ModelAttribute CartVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		DividendVO dividend = (DividendVO)session.getAttribute("dividend");
		String member_id = (String)session.getAttribute("member_id");
		
		//로그인 여부 검사
		if (member == null || member_id == null) {
			return "redirect:/login.do";
		}
		
		// 관심종목에 기존 종목이 있는지 검사
		int count = cartService.countCart(dividend, member);
		System.out.println("count >>>>  "+count);
		
		vo.setMember(member);
		vo.setDividend(dividend);
		
		if (count == 0) {
			cartService.insertCart(vo);
		}
		else {
			cartService.updateCart(vo);
		}
		
		model.addAttribute("msg", "관심종목에 추가했습니다.");
		model.addAttribute("url", "getDividendMain.do");
		return "result/message";
	}
	
    // 목록
    @RequestMapping(value = "/getCartList.do")
    public String getCartList(CartVO vo, Model model, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		DividendVO dividend = (DividendVO)session.getAttribute("dividend");
		String member_id = (String)session.getAttribute("member_id");
		
		//로그인 여부 검사
		if (member == null || member_id == null) {
			return "redirect:/login.do";
		}
		
		vo.setMember(member);
		vo.setDividend(dividend);
		
        List<CartVO> cartList = cartService.getCartList(vo);
        model.addAttribute("cartList", cartList);
        return "cart/getCartList";
    }

    @RequestMapping(value = "/getCart.do")
	public String getCart(CartVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		
		//로그인 여부 검사
		if (member_id == null) {
			return "redirect:/login.do";
		}
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		DividendVO dividend = (DividendVO)session.getAttribute("dividend");
		vo.setMember(member);
		vo.setDividend(dividend);
		
    	CartVO cart = cartService.getCart(vo);
		model.addAttribute("cart", cart);
		return "cart/getCart";
	}
    
    //  삭제
    @RequestMapping("/deleteCart.do")
    public String delete(@RequestParam("cart_seq") int cart_seq, CartVO vo, HttpServletRequest request){
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		
		//로그인 여부 검사
		if (member_id == null) {
			return "redirect:/login.do";
		}
		
		vo.setCart_seq(cart_seq);
        cartService.deleteCart(vo);
        return "redirect:/getCartList.do";
    }
	
}
