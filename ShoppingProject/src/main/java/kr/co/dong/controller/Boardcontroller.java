package kr.co.dong.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.AddressDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.Dv_order_itemDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ImgDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.RankDTO;
import kr.co.dong.DTO.ReturnDTO;
import kr.co.dong.Service.BoardService;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
    private ServletContext servletContext;
	@Autowired
	private BoardService service;
	@Resource(name="uploadPath")
	private String uploadPath;
	// 관리자 기본페이지 이동 
	@GetMapping("board/adminPage")
	public String adminPage() throws Exception {
		service.adminDeliveryCom();		// 배송완료일
		return "adminPage";
	}
	
	// 관리자 상품관리 이동
	@GetMapping("board/adminItem")
	public String adminItem(Model model) throws Exception {
		
		List<ItemDTO> adminItem = service.adminItem();
		model.addAttribute("adminItem",adminItem);
		int itemCnt = adminItem.size();
		model.addAttribute("cnt", itemCnt);
		return "adminItem";
	}
	// 관리자 상품관리 검색기능
		@ResponseBody
		@GetMapping("board/adminItemSearch")
		public Map<String, Object> adminItemSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
		                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
		                                            @RequestParam("endDate") String endDate, @RequestParam("categoryType") String categoryType,
		                                            @RequestParam("categoryType2") String categoryType2) throws Exception {

		    List<ItemDTO> searchResult = service.adminItemSearch(searchType, search, dateType, startDate, endDate, categoryType, categoryType2);
		    int searchCount = searchResult.size();

		    Map<String, Object> resultMap = new HashMap<>();
		    resultMap.put("searchResult", searchResult);
		    resultMap.put("searchCount", searchCount);

		    return resultMap;
		}

	// 관리자 상품 추가 이동
	@GetMapping("board/adminItemInsert")
	public String adminItemInsert() throws Exception{
		return "adminItemInsert";
	}
	
	// 관리자 상품 추가 실행
	@ResponseBody
	@PostMapping("board/adminItemInsert")
	public String adminItemInsert(@RequestBody ItemDTO itemDTO) throws Exception{
		
		service.adminItemInsert(itemDTO);				// 상품 추가
		
		
		ItemDTO itemnum = service.adminItemInsertItemnum();	//방금 추가된 상품 번호 호출
	    service.adminItemInsert2(itemnum.getItemnum()); // 프로시저 호출 메서드 실행
		return "redirect:adminItem";
	}
	
    // 관리자 상품 추가 이미지 등록
    @ResponseBody
    @PostMapping("board/adminImageInsert")
    public String adminImageInsert(ImgDTO imgDTO,HttpSession session) throws Exception {
		// 새로운 이미지 파일을 서버에 저장하고, 해당 URL과 파일 이름을 imgDTO에 설정
	    String imageUrl = (String)session.getAttribute("imageUrl");
	    String url = imageUrl.substring(0, imageUrl.lastIndexOf("/") + 1); // URL
	    String imgname = imageUrl.substring(imageUrl.lastIndexOf("/") + 1); // 파일 이름
	    
	    ItemDTO itemnum = service.adminItemInsertItemnum();	//방금 추가된 상품 번호 호출
        imgDTO.setItemnum(itemnum.getItemnum()+1);
	    imgDTO.setUrl(url);
	    imgDTO.setImgname(imgname);
	    service.adminImageInsert(imgDTO);
        return "success";
    }	
	
	
	// 관리자 상품 추가 이미지 업로드
    @ResponseBody
    @PostMapping("board/adminInsertImageUpload")
    public String adminInsertImageUpload(@RequestParam("imageFile") MultipartFile imageFile, HttpSession session) throws IOException {
    	// 랜덤한 파일 이름 생성
        String originalFileName = imageFile.getOriginalFilename();
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String newFileName = UUID.randomUUID().toString() + extension;

        // 이미지 파일 저장
        String serverPath = servletContext.getRealPath("/resources/bootstrap/img/");
        File file = new File(serverPath + newFileName);
        imageFile.transferTo(file);

        // 이미지 URL 반환
        String imageUrl = "http://localhost:8084/dong/resources/bootstrap/img/" + newFileName;

        // imageUrl을 세션에 저장
        session.setAttribute("imageUrl", imageUrl);
        return imageUrl;
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
	
	// 관리자 상품 수정 실행
	@PostMapping("board/adminItemDetail")
	public String adminItemUpdate(ItemDTO itemDTO) throws Exception {

		service.adminItemUpdate(itemDTO);
		
		return "redirect:adminItemDetail?itemnum="+itemDTO.getItemnum();
	}
	
	// 관리자 상품 상세정보 이미지 업로드
    @ResponseBody
    @PostMapping("board/adminImageUpload")
    public String adminImageUpload(@RequestParam("imageFile") MultipartFile imageFile, HttpSession session) throws IOException {
        // 랜덤한 파일 이름 생성
        String originalFileName = imageFile.getOriginalFilename();		//업로드 파일명
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));		// 확장자 추출
        String newFileName = UUID.randomUUID().toString() + extension;		// 랜덤 파일이름+확장자

        // 이미지 파일을 서버에 저장
        String serverPath = servletContext.getRealPath("/resources/bootstrap/img/");
        File file = new File(serverPath + newFileName);
        imageFile.transferTo(file);

        // 이미지 URL 반환
        String imageUrl = "http://localhost:8084/dong/resources/bootstrap/img/" + newFileName;
        
        // imageUrl을 세션에 저장
        session.setAttribute("imageUrl", imageUrl);
        return imageUrl;
    }
    
    // 관리자 상품 상세정보 이미지 수정
    @ResponseBody
    @PostMapping("board/adminImageUpdate")
    public String adminImageUpdate(@RequestBody ImgDTO imgDTO,HttpSession session) throws Exception {
		// 새로운 이미지 파일을 서버에 저장하고, 해당 URL과 파일 이름을 imgDTO에 설정
	    String imageUrl = (String)session.getAttribute("imageUrl");
	    String url = imageUrl.substring(0, imageUrl.lastIndexOf("/") + 1); // URL
	    String imgname = imageUrl.substring(imageUrl.lastIndexOf("/") + 1); // 파일 이름
        
	    imgDTO.setUrl(url);
	    imgDTO.setImgname(imgname);
	    service.adminImageUpdate(imgDTO);
	    
	    
        return "success";
    }
	
	// 관리자 재고추가 실행
	@ResponseBody
	@PostMapping("board/adminItemDetail2")
	public String adminItemAdd(Iv_itemDTO iv_itemDTO,HttpServletRequest req) throws Exception{
		String[] arr1 = req.getParameterValues("arr1");     // 재고번호
	    String[] arr2 = req.getParameterValues("arr2");     // 수량
	    String[] itemcntadd = req.getParameterValues("itemcntadd");     // 추가할 수량

	    for (int i = 0; i < arr1.length; i++) {
	        if (!("0".equals(itemcntadd[i]) || "".equals(itemcntadd[i]))) {
	            iv_itemDTO.setIv_itemnum(Integer.parseInt(arr1[i])); // iv_itemnum 설정
	            iv_itemDTO.setItemcnt(Integer.parseInt(arr2[i])); // itemcnt 설정
	            service.adminItemAdd(iv_itemDTO);
	        }
	    }
		return "redirect:adminItemDetail?itemnum="+iv_itemDTO.getIv_itemnum();
	}
	
	// 관리자 상품 제거 실행
	@ResponseBody
	@PostMapping("board/adminItemDetail3")
	public String adminItemDelete(@RequestParam("itemnum") int itemnum) throws Exception{
		service.adminItemDelete(itemnum);
		return "redirect:adminItem";
	}
	
	// 관리자 회원관리 이동
	@GetMapping("board/adminMember")
	public String adminMember(Model model) throws Exception{
		List<MemberDTO> adminMember = service.adminMember();
		model.addAttribute("adminMember",adminMember);
		int membercnt = adminMember.size();
		model.addAttribute("cnt",membercnt);		
		return "adminMember";
	}
	
	// 관리자 회원관리 검색 기능
	@ResponseBody
	@GetMapping("board/adminMemberSearch")
	public Map<String, Object> adminMemberSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
	                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
	                                            @RequestParam("endDate") String endDate) throws Exception {

	    List<MemberDTO> searchResult = service.adminMemberSearch(searchType, search, dateType, startDate, endDate);
	    int searchCount = searchResult.size();

	    // 회원 리스트에서 비밀번호 필드를 null로 설정
	    for (MemberDTO member : searchResult) {
	        member.setPw(null);
	    }

	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);

	    return resultMap;
	}


	// 관리자 회원 상세정보 이동
	@GetMapping("board/adminMemberDetail")
	public String adminMemberDetail(int membernum, Model model) throws Exception{
		MemberDTO member = service.adminMemberDetail(membernum);
		model.addAttribute("member", member);
		
		// 이메일 쪼개기
	    int index = member.getEmail().indexOf("@");
	    String email1 = member.getEmail().substring(0, index); 
	    String email2 = member.getEmail().substring(index + 1); 
	    
	    // 전화번호 쪼개기
	    String[] telParts = member.getTel().split("-");
	    String tel1 = telParts[0];
	    String tel2 = telParts[1];
	    String tel3 = telParts[2];

	    // model에 추가
	    model.addAttribute("email1", email1);
	    model.addAttribute("email2", email2);
	    model.addAttribute("tel1", tel1);
	    model.addAttribute("tel2", tel2);
	    model.addAttribute("tel3", tel3);
		
		return "adminMemberDetail";
	}
	
	// 관리자 회원정보 포인트수정 이동
	@GetMapping("board/adminMemberDetailPoint")
	public String adminMemberDetailPoint(Model model,int membernum) throws Exception{
		MemberDTO member = service.adminMemberDetailPoint(membernum);
		model.addAttribute("point", member);
		return "adminMemberDetailPoint";
	}
	
	// 관리자 회원정보 포인트 수정 실행
	@ResponseBody
	@PostMapping("board/adminMemberDetailPointUpdate")
	public String adminMemberDetailPointUpdate(@RequestBody Map<String, Object> formData) throws Exception{
		String id = (String) formData.get("id");
        String pointAdd = (String) formData.get("pointAdd");
		service.adminMemberDetailPointUpdate(id, pointAdd);
		return "";
	}
	
	// 관리자 회원정보 수정 실행
	@PostMapping("board/adminMemberDetail")			// 디테일에서 바로 처리함
	public String adminMemberUpdate(MemberDTO memberDTO) throws Exception{
		service.adminMemberUpdate(memberDTO);
		
		return "redirect:adminMemberDetail?membernum=" + memberDTO.getMembernum();
	}
	
	// 관리자 회원 탈퇴 실행
	@PostMapping("board/adminMemberDelete")
	public String adminMemberDelete(MemberDTO memberDTO) throws Exception{
		service.adminMemberDelete(memberDTO);
		return "adminMember";
	}
	
	// 관리자 회원 추가 이동
	@GetMapping("board/adminMemberRegister")
	public String adminMemberRegister() throws Exception{
		return "adminMemberRegister";
	}
	
	// 관리자 회원 추가 실행
	@PostMapping("board/adminMemberRegister")
	public String adminMemberRegister(MemberDTO memberDTO) throws Exception{
		
		AddressDTO newAddressDTO = new AddressDTO();
	    newAddressDTO.setDelpostcode(memberDTO.getPostcode());
	    newAddressDTO.setDelroadaddr(memberDTO.getRoadaddr());
	    newAddressDTO.setDeljibunaddr(memberDTO.getJibunaddr());
	    newAddressDTO.setDeldetailaddr(memberDTO.getDetailaddr());
	    newAddressDTO.setDelextraaddr(memberDTO.getExtraaddr());
		
		
	    service.adminMemberRegisterAddr(newAddressDTO);
		service.adminMemberRegister(memberDTO);
		return "redirect:/board/adminMember";
	}
	
	// 관리자 회원 추가 중복체크 버튼
	@ResponseBody
	@PostMapping("board/adminCheckID")
	public int adminCheckID(MemberDTO memberDTO) throws Exception{
		int result = service.adminCheckID(memberDTO);
		return result;
	}
	
	// 관리자 회원 레벨관리 이동
	@GetMapping("board/adminMemberRank")
	public String adminMemberRank(Model model) throws Exception{
		List<RankDTO> rank = service.adminMemberRank();
		model.addAttribute("rank", rank);
		return "adminMemberRank";
	}
	
	// 관리자 회원 레벨관리 수정
	@PostMapping("board/adminMemberRank")
	public String adminMemberRankUpdate(@RequestParam("rating") int[] ratingArray,
	                                    @RequestParam("rating_nm") String[] ratingNmArray,
	                                    @RequestParam("discount") int[] discountArray,
	                                    @RequestParam("accumulation") int[] accumulationArray,
	                                    @RequestParam("lowpoint") int[] lowpointArray,
	                                    @RequestParam("highpoint") int[] highpointArray) throws Exception {
	    for (int i = 0; i < ratingArray.length; i++) {
	        int rating = ratingArray[i];
	        String ratingNm = ratingNmArray[i];
	        int discount = discountArray[i];
	        int accumulation = accumulationArray[i];
	        int lowpoint = lowpointArray[i];
	        int highpoint = highpointArray[i];

	        RankDTO rankDTO = new RankDTO();
	        rankDTO.setRating(rating);
	        rankDTO.setRating_nm(ratingNm);
	        rankDTO.setDiscount(discount);
	        rankDTO.setAccumulation(accumulation);
	        rankDTO.setLowpoint(lowpoint);
	        rankDTO.setHighpoint(highpoint);
	        
	        service.adminMemberRankUpdate(rankDTO);
			service.adminMemberRankUpdate2(rankDTO);
	    }
			
	    // 처리 후에 원하는 페이지로 리다이렉트 또는 응답을 보낼 수 있습니다.
	    return "redirect:/board/adminMemberRank";
	}
	
	// 관리자 문의사항 이동
	@GetMapping("board/adminHelp")
	public String adminHelp(Model model) throws Exception {
		
		List<HelpDTO> adminHelp = service.adminHelp();
		model.addAttribute("adminHelp", adminHelp);
		int helpcnt = adminHelp.size();
		model.addAttribute("cnt", helpcnt);
		return "adminHelp";
	}
	// 관리자 회원관리 검색 기능
	@ResponseBody
	@GetMapping("board/adminHelpSearch")
	public Map<String, Object> adminHelpSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
            									@RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
            									@RequestParam("endDate") String endDate) throws Exception {

	    List<HelpDTO> searchResult = service.adminHelpSearch(searchType, search, dateType, startDate, endDate);
	    int searchCount = searchResult.size();

	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);

	    return resultMap;
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
		return "redirect:adminHelpDetail?hno=" + helpDTO.getHno();
	}
	
	// 관리자 주문내역 이동
	@GetMapping("board/adminOrder")
	public String adminOrder(Model model) throws Exception{
		
		List<OrderDTO> adminOrder = service.adminOrder();
		model.addAttribute("adminOrder", adminOrder);
		int ordercnt = adminOrder.size();
		model.addAttribute("cnt", ordercnt);
		return "adminOrder";
	}
	
	// 관리자 주문내역 검색 기능
	@ResponseBody
	@GetMapping("board/adminOrderSearch")
	public Map<String, Object> adminOrderSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
	                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
	                                            @RequestParam("endDate") String endDate, @RequestParam("O.paymethod") String[] paymethod,
	                                            @RequestParam("state") String[] state) throws Exception {

	    List<OrderDTO> searchResult = service.adminOrderSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	    int searchCount = searchResult.size();
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);
	    return resultMap;
	}
	
	// 관리자 주문 상세정보 이동
	@GetMapping("board/adminOrderDetail")
	public String adminOrderDetail(int buynum,Model model) throws Exception{
		List<ReturnDTO> adminOrder = service.adminOrderDetail(buynum);
		model.addAttribute("order", adminOrder);
		System.out.println(adminOrder);
		return "adminOrderDetail";
	}
	
	// 관리자 주문상세 처리
	@PostMapping("board/adminOrderDetail")
	public String adminOrderDetail(int buynum) throws Exception{
		service.adminOrderDetail2(buynum);
		return "redirect:/board/adminOrder";
	}
	
	// 관리자 반품내역 이동
	@GetMapping("board/adminReturn")
	public String adminReturn(Model model) throws Exception{
		
		List<ReturnDTO> adminReturn = service.adminReturn();
		model.addAttribute("adminReturn", adminReturn);
		int returncnt = adminReturn.size();
		model.addAttribute("cnt", returncnt);
		return "adminReturn";
	}
	// 관리자 반품내역 검색 기능
	@ResponseBody
	@GetMapping("board/adminReturnSearch")
	public Map<String, Object> adminReturnSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
	                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
	                                            @RequestParam("endDate") String endDate, @RequestParam("O.paymethod") String[] paymethod,
	                                            @RequestParam("state") String[] state) throws Exception {

	    List<ReturnDTO> searchResult = service.adminReturnSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	    int searchCount = searchResult.size();
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);
	    return resultMap;
	}
	
	// 관리자 반품상세 이동
	@GetMapping("board/adminReturnDetail")
	public String adminReturnDetail(Model model,int returnnum) throws Exception{
		List<ReturnDTO> re = service.adminReturnDetail(returnnum);
		model.addAttribute("re",re);
		return "adminReturnDetail";
	}
	// 관리자 반품상세 처리
	@PostMapping("board/adminReturnDetail")
	public String adminReturnDetail(int returnnum) throws Exception{
		service.adminReturnDetail2(returnnum);
		return "redirect:/board/adminReturn";
	}
	
	// 관리자 교환내역 이동
	@GetMapping("board/adminExchange")
	public String adminExchange(Model model) throws Exception{
		
		List<ReturnDTO> adminExchange = service.adminExchange();
		model.addAttribute("adminExchange", adminExchange);
		int exchangecnt = adminExchange.size();
		model.addAttribute("cnt", exchangecnt);
		return "adminExchange";
	}
	
	// 관리자 반품내역 검색 기능
	@ResponseBody
	@GetMapping("board/adminExchangeSearch")
	public Map<String, Object> adminExchangeSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
	                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
	                                            @RequestParam("endDate") String endDate, @RequestParam("O.paymethod") String[] paymethod,
	                                            @RequestParam("state") String[] state) throws Exception {

	    List<ReturnDTO> searchResult = service.adminExchangeSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	    int searchCount = searchResult.size();
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);
	    return resultMap;
	}
		
	//관리자 교환상세 이동
	@GetMapping("board/adminExchangeDetail")
	public String adminExchangeDetail(Model model, int returnnum) throws Exception{
		List<ReturnDTO> ex = service.adminExchangeDetail(returnnum);
		model.addAttribute("ex", ex);
		return "adminExchangeDetail";
	}
	
	//관리자 교환상세 처리
	@PostMapping("board/adminExchangeDetail")
	public String adminExchangeDetail2(int returnnum) throws Exception{
		service.adminExchangeDetail2(returnnum);
		return "redirect:/board/adminExchange";
	}
	
	
	// 관리자 신고리뷰 이동
	@GetMapping("board/adminReview")
	public String adminReview(Model model) throws Exception {
		List<Dr_reviewDTO> adminReview = service.adminReview();
		model.addAttribute("adminReview", adminReview);
		int reviewcnt = adminReview.size();
		model.addAttribute("cnt", reviewcnt);
		return "adminReview";
	}
	
	// 관리자 신고리뷰 검색 기능
	@ResponseBody
	@GetMapping("board/adminReviewSearch")
	public Map<String, Object> adminReviewSearch(@RequestParam("searchType") String searchType, @RequestParam("search") String search,
	                                            @RequestParam("dateType") String dateType, @RequestParam("startDate") String startDate,
	                                            @RequestParam("endDate") String endDate, @RequestParam("R.del") String[] delStates) throws Exception {

	    List<Dr_reviewDTO> searchResult = service.adminReviewSearch(searchType, search, dateType, startDate, endDate,delStates);
	    int searchCount = searchResult.size();
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("searchResult", searchResult);
	    resultMap.put("searchCount", searchCount);
	    return resultMap;
	}
	
	// 관리자 신고리뷰상세 이동
	@GetMapping("board/adminReviewDetail")
	public ModelAndView adminReviewDetail(int drnum) throws Exception{
		ModelAndView mav = new ModelAndView();
		Dr_reviewDTO adminReviewDetail = service.adminReviewDetail(drnum);
		mav.addObject("detail", adminReviewDetail);
		mav.setViewName("adminReviewDetail");
		return mav;
	}
	
	// 관리자 신고리뷰상세 게시버튼
	@ResponseBody
	@PostMapping("board/adminReviewDetail2")
	public String adminReviewDetail2(@RequestParam("drnum") int drnum) throws Exception{
		service.adminReviewDetail2(drnum);
		return "adminReviewDetail?drnum="+drnum;
	}
	
	// 관리자 신고리뷰상세 삭제버튼
	@PostMapping("board/adminReviewDetail3")
	public String adminReviewDetail3(Dr_reviewDTO dr_reviewDTO) throws Exception{
		service.adminReviewDetail3(dr_reviewDTO);
		return "redirect:/board/adminReviewDetail?drnum="+dr_reviewDTO.getDrnum();
	}
	
	// 관리자 반품상세 이동
		@GetMapping("board/test2")
		public String test2(Model model,int returnnum,int buynum) throws Exception{
			List<ReturnDTO> re = service.adminReturnDetail(returnnum);
			model.addAttribute("re",re);
			List<ReturnDTO> adminOrder = service.adminOrderDetail(buynum);
			model.addAttribute("order", adminOrder);
			System.out.println(adminOrder);
			return "adminReturnDetail";
		}
}
