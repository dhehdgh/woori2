package kr.co.dong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;
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
	
	// 관리자 기본페이지 이동
	@GetMapping("board/adminPage")
	public String adminPage() throws Exception {
		
		return "adminPage";
	}
	
	// 관리자 상품관리 이동
	@GetMapping("board/adminItem")
	public String adminItem(Model model) throws Exception {
		
		List<ItemDTO> adminItem = service.adminItem();
		model.addAttribute("adminItem",adminItem);
		return "adminItem";
	}
	
	// 관리자 회원관리 이동
	@GetMapping("board/adminMember")
	public String adminMember(MemberDTO memberDTO,Model model) throws Exception{
		List<MemberDTO> adminMember = service.adminMember();
		model.addAttribute("adminMember",adminMember);
		
		return "adminMember";
	}
	
	// 관리자 문의사항 이동
	@GetMapping("board/adminHelp")
	public String adminHelp(Model model) throws Exception {
		
		List<HelpDTO> adminHelp = service.adminHelp();
		model.addAttribute("adminHelp", adminHelp);
		return "adminHelp";
	}
	
	// 관리자 주문내역 이동
	@GetMapping("board/adminOrder")
	public String adminOrder(Model model) throws Exception{
		
		List<OrderDTO> adminOrder = service.adminOrder();
		model.addAttribute("adminOrder", adminOrder);
		return "adminOrder";
	}
	
	// 관리자 반품처리 이동
	@GetMapping("board/adminReturn")
	public String adminReturn(Model model) throws Exception{
		
		List<ReturnDTO> adminReturn = service.adminReturn();
		model.addAttribute("adminReturn", adminReturn);
		
		return "adminReturn";
	}
	
	// 관리자 교환처리 이동
	@GetMapping("board/adminExchange")
	public String adminExchange(Model model) throws Exception{
		
		List<ReturnDTO> adminExchange = service.adminExchange();
		model.addAttribute("adminExchange", adminExchange);
		return "adminExchange";
	}
	
	
	// 관리자 신고리뷰 이동
	@GetMapping("board/adminReview")
	public String adminReview(Model model) throws Exception {
		List<Dr_reviewDTO> adminReview = service.adminReview();
		model.addAttribute("adminReview", adminReview);
		return "adminReview";
	}

}
