package kr.co.dong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	// 카테고리 - 테이블 샘플 이동
	@RequestMapping(value="board/sampleBoard", method = RequestMethod.GET)
	public String sampleBoard() {
		
		return "sampleBoard";
	}
	
	
	// 헤더 - 장바구니 이동
	@RequestMapping(value="board/cartView", method = RequestMethod.GET)
	public String cartView() {
		
		return "cartView";
	}

}
