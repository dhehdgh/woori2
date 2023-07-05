package kr.co.dong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.Service.BoardService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
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
	
	@GetMapping("board/adminPage")
	public String adminPage() throws Exception {
		
		return "adminPage";
	}
	@GetMapping("board/adminItem")
	public String adminItem() throws Exception{
		
		return "adminItem";
	}
	@GetMapping("board/adminMember")
	public String adminMember(MemberDTO memberDTO,Model model) throws Exception{
		List<MemberDTO> member = service.member();
		model.addAttribute("member",member);
		
		return "adminMember";
	}

}
