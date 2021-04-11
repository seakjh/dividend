package com.baedang.view.board;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("dividend")
public class MainController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main() {
		return "main";
	}
	
	@ModelAttribute("conditionMap") //스태틱방식 필요할때 갖다쓰기
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("종목명", "CORP_NAME");
		conditionMap.put("종목코드", "CORP_CODE");
		return conditionMap;
	}
	
}
