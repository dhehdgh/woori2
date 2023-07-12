package kr.co.dong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
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
	
	// 관리자 상품 추가 이동
	@GetMapping("board/adminItemInsert")
	public String adminItemInsert() throws Exception{
		return "adminItemInsert";
	}
	
	// 관리자 상품 추가 실행
	@PostMapping("board/adminItemInsert")
	public String adminItemInsert(ItemDTO itemDTO) throws Exception{
		service.adminItemInsert(itemDTO);
		return "redirect:adminItem";
	}
	
	// 관리자 상품 상세정보 이동
	@GetMapping("board/adminItemDetail")
	public String adminItemDetail(int itemnum, Model model) throws Exception{
		ItemDTO item = service.adminItemDetail(itemnum);
		model.addAttribute("item", item);
		List<Iv_itemDTO> iv_item = service.adminItemDetail2(itemnum);
		model.addAttribute("iv_item", iv_item);
		return "adminItemDetail";
	}
	
	// 관리자 상품 수정 이동
	@GetMapping("board/adminItemUpdate")
	public String adminItemUpdate(int itemnum, Model model) throws Exception{
		ItemDTO item = service.adminItemDetail(itemnum);
		model.addAttribute("item", item);
		return "adminItemUpdate";
	}
	
	// 관리자 상품 수정 실행
	@PostMapping("board/adminItemUpdate")
	public String adminItemUpdate(ItemDTO itemDTO) throws Exception {
		service.adminItemUpdate(itemDTO);
		
		return "redirect:adminItemDetail?itemnum="+itemDTO.getItemnum();
	}
	
	// 관리자 재고추가 이동
	@GetMapping("board/adminItemAdd")
	public String adminItemAdd(int itemnum, Model model) throws Exception{
		List<Iv_itemDTO> iv_item = service.adminItemDetail2(itemnum);
		model.addAttribute("iv_item", iv_item);
		return "adminItemAdd";
	}
	
	// 관리자 재고추가 실행
	@PostMapping("board/adminItemAdd")
	public String adminItemAdd(Iv_itemDTO iv_itemDTO) throws Exception{
		service.adminItemAdd(iv_itemDTO);
		System.out.println(iv_itemDTO.getItemnum());
		return "redirect:adminItemAdd?itemnum="+iv_itemDTO.getIv_itemnum();
	}
	
	// 관리자 회원관리 이동
	@GetMapping("board/adminMember")
	public String adminMember(MemberDTO memberDTO,Model model) throws Exception{
		List<MemberDTO> adminMember = service.adminMember();
		model.addAttribute("adminMember",adminMember);
		
		return "adminMember";
	}

	// 관리자 회원 상세정보 이동
	@GetMapping("board/adminMemberDetail")
	public String adminMemberDetail(int membernum, Model model) throws Exception{
		MemberDTO member = service.adminMemberDetail(membernum);
		model.addAttribute("member", member);
		return "adminMemberDetail";
	}
	
	// 관리자 회원정보 수정 이동
	@GetMapping("board/adminMemberUpdate")
	public String adminMemberUpdate(int membernum, Model model) throws Exception{
		MemberDTO member = service.adminMemberDetail(membernum);
		model.addAttribute("member", member);
		return "adminMemberUpdate";
	}
	
	// 관리자 회원정보 수정 실행
	@PostMapping("board/adminMemberUpdate")
	public String adminMemberUpdate(MemberDTO memberDTO) throws Exception{
		service.adminMemberUpdate(memberDTO);
		
		return "redirect:adminMemberDetail?membernum=" + memberDTO.getMembernum();
	}
	
	// 관리자 회원 탈퇴 이동
	@PostMapping("board/adminMemberDelete")
	public String adminMemberDelete(MemberDTO memberDTO) throws Exception{
		service.adminMemberDelete(memberDTO);
		return "adminMember";
	}
	
	// 관리자 문의사항 이동
	@GetMapping("board/adminHelp")
	public String adminHelp(Model model) throws Exception {
		
		List<HelpDTO> adminHelp = service.adminHelp();
		model.addAttribute("adminHelp", adminHelp);
		return "adminHelp";
	}
	
	// 관리자 문의사항 상세 이동
	@GetMapping("board/adminHelpDetail")
	public String adminHelpDetail(int hno, Model model) throws Exception {
		
		HelpDTO adminHelpDetail = service.adminHelpDetail(hno);
		model.addAttribute("adminHelp", adminHelpDetail);
		return "adminHelpDetail";
	}
	
	// 관리자 문의사항 답변 작성
	@PostMapping("board/adminHelpUpdate")
	public String adminHelpUpdate(HelpDTO helpDTO) throws Exception{
		service.adminHelpUpdate(helpDTO);
		System.out.println(helpDTO);
		return "redirect:adminHelpDetail?hno=" + helpDTO.getHno();
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
