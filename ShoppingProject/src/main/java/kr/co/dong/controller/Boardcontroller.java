package kr.co.dong.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import kr.co.dong.Service.BoardService;


@Controller
public class Boardcontroller  {
	@Autowired
	BoardService service;	
	private static final Logger logger = LoggerFactory.getLogger(Boardcontroller.class);
	
	//인스턴스화 사용하는법 : 강한결합
//	HomeService homeService = new HomeService();
	//참조형으로 사용하는법
	@Inject	//@Autowired(어노테이션) : spring 전용
	BoardService BoardService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//로그인
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home";
	}
	
//아이디 찾기
	@RequestMapping("board/findIDView")
	public String findID() throws Exception {
		return "findIDView";
	}
		
	@PostMapping("board/findID")
	public ModelAndView findID(memberDTO memberDTO) throws Exception{
		ModelAndView mav = new ModelAndView();
		memberDTO findID = service.findID(memberDTO);
		
		if(findID != null) {
			mav.addObject("member", findID);
			mav.setViewName("findID");
			return mav;
			
		}else {
			mav.addObject("error", true);
			mav.setViewName("redirect:findIDView");
			return mav;
		}
	}
	
//비밀번호 찾기, 아이디랑 메일이 같으면 비밀번호 변경할 수 있게 함
	@RequestMapping("board/findPWView")
	public String findPW() throws Exception {
		return "findPWView";
	}
	
	@PostMapping("board/findPW")
	public ModelAndView findPW(memberDTO memberDTO) throws Exception{
		ModelAndView mav = new ModelAndView();
		memberDTO findPW = service.findPW(memberDTO);
	
		if (findPW != null) {
			mav.addObject("member", findPW);
			mav.setViewName("findPW");
	        return mav;
	    } else {
	    	mav.addObject("error", true);
	    	mav.setViewName("redirect:findPWView");
	    	return mav;
	    }
	}
	
	//비밀번호 찾기 후 수정
	@RequestMapping(value ="board/pwupdate1", method = RequestMethod.POST)
	public String pwupdate1( memberDTO memberDTO) throws Exception {							    
		int pw = service.pwupdate1(memberDTO);	
			return "home";
	}	

	
//테이블샘플
		@RequestMapping("board/sampleBoard")
		public String sampleBoard() throws Exception {
			return "sampleBoard";
		}		
//공지사항
		@RequestMapping("board/boardlist")
		public String boardlist() throws Exception {
			return "boardlist";
		}
//문의사항
		@RequestMapping("board/helplist")
		public String helplist() throws Exception {
			return "helplist";
		}
		
		
		
		
//회원가입으로 이동
		@RequestMapping(value="board/joinView", method = RequestMethod.GET)
		public String joinView() throws Exception {
			return "joinView";
		}	
		   
//회원가입 
           @PostMapping("board/MemberRegister")
           public String adminMemberRegister(memberDTO memberDTO, addressDTO addressDTO) throws Exception{
              service.MemberRegister(memberDTO);
              service.addrinsert1(addressDTO);
            return "redirect:loginForm";
           }		  
		   
// 회원가입 중복체크 버튼
		   @ResponseBody
		   @PostMapping("board/memberCheckID")
		   public int memberCheckID(memberDTO memberDTO) throws Exception{
		      int result = service.memberCheckID(memberDTO);
		      return result;
		   }
		   
		   
		   
		   
		   
//내정보수정
		//수정인증으로 이동
		@RequestMapping(value="board/mycheck", method = RequestMethod.GET)
		public String mycheck(HttpSession session,HttpServletRequest request, Model model, memberDTO memberDTO) throws Exception {
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);
		  
			memberDTO member = service.check(membernum, memberDTO);
			model.addAttribute("member", member);	
			System.out.println(member);			
			return "mycheck";
		}
		
		//내정보수정로 이동
		@RequestMapping(value ="board/myupdate", method = RequestMethod.GET)
		public String myupdate(HttpSession session,HttpServletRequest request, Model model, memberDTO memberDTO) throws Exception {
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);
		    
				memberDTO member = service.memdetail(membernum, memberDTO);
					model.addAttribute("member", member);					
			return "myupdate";
		}
		//메일수정
		@RequestMapping(value ="board/mailupdate", method = RequestMethod.POST)
		public String memupdate(HttpSession session,HttpServletRequest request,memberDTO memberDTO) throws Exception {	
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);		    
			int mail = service.mailupdate(membernum, memberDTO);									
		return "redirect:myupdate";
		}
		
		//생일수정
		@RequestMapping(value ="board/birthupdate", method = RequestMethod.POST)
		public String birthupdate(HttpSession session,HttpServletRequest request, memberDTO memberDTO) throws Exception {	
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			int birth = service.birthupdate(membernum, memberDTO);
		return "redirect:myupdate";
		}
		//번호수정
		@RequestMapping(value ="board/telupdate", method = RequestMethod.POST)
		public String telupdate(HttpSession session,HttpServletRequest request, memberDTO memberDTO) throws Exception {		
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);
		    
			int tel = service.telupdate(membernum, memberDTO);									
		return "redirect:myupdate";
		}
		//비밀번호 수정
		@RequestMapping(value ="board/pwupdate", method = RequestMethod.POST)
		public String pwupdate(HttpSession session,HttpServletRequest request, memberDTO memberDTO) throws Exception {	
			Map user    = (Map)session.getAttribute("user");
		    int membernum = (int) user.get("membernum");
		    System.out.println("세션에 저장되어 있는 변수: " + membernum);		    
			int pw = service.pwupdate(membernum, memberDTO);	
			
			session.invalidate();
		return "home";
		}	
				
		
//전화인증번호
		@ResponseBody
		@RequestMapping(value = "board/phoneCheck", method = RequestMethod.GET)		
		public String sendSMS(@RequestParam("tel2") String userPhoneNumber) { // 휴대폰 문자보내기
			int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

			service.certifiedPhoneNumber(userPhoneNumber,randomNumber);
			
			return Integer.toString(randomNumber);
		}
//회원탈퇴
			//회원탈퇴로 이동
			@RequestMapping(value="board/mydeleteView", method = RequestMethod.GET)
			public String mydeleteView(HttpSession session,HttpServletRequest request, Model model, memberDTO memberDTO) throws Exception {
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				 memberDTO memdelete = service.memdetail(membernum, memberDTO);
				model.addAttribute("memdelete", memdelete);				
				return "mydeleteView";
			}						
			//회원 탈퇴
			@RequestMapping(value="board/memdelete", method = RequestMethod.POST)
			public String memdelete(HttpSession session,HttpServletRequest request, memberDTO memberDTO) throws Exception{	
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				int memdelete = service.memdelete(membernum, memberDTO);
				session.invalidate();
				return "home";
			}
//배송지관리
			//배송지관리로 이동
			@RequestMapping("board/addrlist")
			public String addrlist(HttpSession session,HttpServletRequest request, Model model) throws Exception {
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				List<addressDTO> addrlist = service.addrlist(membernum);						
				model.addAttribute("addrlist", addrlist);				
				return "addrlist";
			}	
			//기본배송지 수정
			@RequestMapping(value="board/addrbasic", method = RequestMethod.GET)
			public String addrbasic(@RequestParam("addrnum")int addrnum)throws Exception {
				int addrbasic = service.addrbasic(addrnum);
				return "redirect:addrlist";				
			}
			//배송지수정페이지로 이동
			@RequestMapping(value="board/addrupdate", method = RequestMethod.GET)
			public String addrupdate(@RequestParam("addrnum")int addrnum, Model model)throws Exception {
				addressDTO addrupdate = service.addrdetail(addrnum);
				model.addAttribute("addrupdate",addrupdate);				
				return "addrupdate";
			}
			//배송지수정
	 		@RequestMapping(value ="board/addrupdate", method = RequestMethod.POST)
	 		public String addrupdate(addressDTO addressDTO) throws Exception{	 			
	 			int addrupdate = service.addrupdate(addressDTO);	 			
	 			return "redirect:addrlist";
	 		}
			//배송지 삭제
			@RequestMapping(value="board/addrdelete", method = RequestMethod.GET)
			public String addrdelete(@RequestParam("addrnum")int addrnum) throws Exception{				
				int addrdelete = service.addrdelete(addrnum);								
				return "redirect:addrlist";
			}
			//배송지추가로 이동
			@RequestMapping(value="board/addrinsert", method = RequestMethod.GET)
			public String addrinsert()throws Exception {					
				return "addrinsert";
			}
			//배송지 추가
			@RequestMapping(value="board/addrinsert", method = RequestMethod.POST)
			public String addrinsert(HttpSession session, HttpServletRequest request, addressDTO addressDTO) throws Exception{
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				int addrinsert = service.addrinsert(membernum, addressDTO);
				return "redirect:addrlist";						
			}
			
			//팝업배송지리스트로 이동
			@RequestMapping(value="board/popaddrlist", method = RequestMethod.GET)
			public String popaddrlist(HttpSession session,HttpServletRequest request, Model model)throws Exception {
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				List<addressDTO> addrlist = service.addrlist(membernum);						
				model.addAttribute("addrlist", addrlist);	
				return "popaddrlist";
			}
			//팝업기본배송지 수정
			@RequestMapping(value="board/popaddrbasic", method = RequestMethod.GET)
			public String popaddrbasic(@RequestParam("addrnum")int addrnum)throws Exception {
				int addrbasic = service.addrbasic(addrnum);
				return "redirect:popaddrlist";				
			}
			//팝업배송지추가로 이동
			@RequestMapping(value="board/popaddrinsert", method = RequestMethod.GET)
			public String popaddrinsert()throws Exception {					
				return "popaddrinsert";
			}
			//팝업배송지 추가
			@RequestMapping(value="board/popaddrinsert", method = RequestMethod.POST)
			public String popaddrinsert(HttpSession session, HttpServletRequest request, addressDTO addressDTO) throws Exception{					
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
			    int addrinsert = service.addrinsert(membernum, addressDTO);
				return "redirect:popaddrlist";						
			}
			//팝업배송지수정페이지로 이동
			@RequestMapping(value="board/popaddrupdate", method = RequestMethod.GET)
			public String popaddrupdate(@RequestParam("addrnum")int addrnum, Model model)throws Exception {
				addressDTO addrupdate = service.addrdetail(addrnum);
				model.addAttribute("addrupdate",addrupdate);				
				return "popaddrupdate";
			}
			//팝업배송지수정
	 		@RequestMapping(value ="board/popaddrupdate", method = RequestMethod.POST)
	 		public String popaddrupdate(addressDTO addressDTO) throws Exception{	 			
	 			int addrupdate = service.addrupdate(addressDTO);	 			
	 			return "redirect:popaddrlist";
	 		}
	 		//팝업배송지 삭제
			@RequestMapping(value="board/popaddrdelete", method = RequestMethod.GET)
			public String popaddrdelete(@RequestParam("addrnum")int addrnum) throws Exception{				
				int addrdelete = service.addrdelete(addrnum);								
				return "redirect:popaddrlist";
			}
			
//찜
			//찜리스트, 페이징---------------------------------------------------------------------------------
			//내찜목록로 이동
			@RequestMapping(value = "board/mywishlist", method = { RequestMethod.GET, RequestMethod.POST })
			public ModelAndView mywishlist(HttpSession session,HttpServletRequest request,
			    @RequestParam(defaultValue = "1") int page, // 현재 페이지
			    @RequestParam(defaultValue = "3") int pageSize //한페이지에 들어가는 게시글 수
			    
			) throws Exception {
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
			    ModelAndView mav = new ModelAndView();
			    
			    int totalCount1 = service.getTotalCount1(membernum); 
			    int totalPages1 = (int) Math.ceil((double) totalCount1 / pageSize);
			    
			    
			    
			    int startIdx = (page - 1) * pageSize;
			    int endIdx = pageSize;

			    List<mylistDTO> likelist = service.getListByRange1(membernum, startIdx, endIdx);

			    mav.addObject("likelist", likelist);
			    mav.addObject("currentPage", page);
			    mav.addObject("totalPages", totalPages1);
			    mav.setViewName("mywishlist");
			    return mav;
			}	
			
		
			//찜삭제
			@RequestMapping(value="board/likedelete", method = RequestMethod.GET)
			public String likedelete(@RequestParam("zno")int zno) throws Exception{				
				int likedelete = service.likedelete(zno);								
						return "redirect:mywishlist";
			}
			
			//찜선택삭제
			@ResponseBody
			@RequestMapping(value="board/selectdelete", method = RequestMethod.POST)
			public String selectdelete(HttpServletRequest request)throws Exception{
				System.out.println("asd");
				String[] ajaxMag = request.getParameterValues("valuearr");
				int size = ajaxMag.length;
				for(int i=0; i<size; i++) {
					service.selectdelete(ajaxMag[i]);
				}
				return "redirect:mywishlist";
			}
			
//주문목록
			//리스트, 페이징, 검색---------------------------------------------------------------------------------
			//주문목록으로 관리로 이동
			@RequestMapping(value = "board/myorderlist", method = { RequestMethod.GET, RequestMethod.POST })
			public ModelAndView orderlist(HttpSession session,HttpServletRequest request, Model model,
			    @RequestParam(defaultValue = "1") int page, // 현재 페이지
			    @RequestParam(defaultValue = "3") int pageSize, //한페이지에 들어가는 게시글 수
			    @RequestParam(defaultValue = "") String keyword,
			    @RequestParam(defaultValue = "") String kind
			) throws Exception {
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
				System.out.println(kind);
			    ModelAndView mav = new ModelAndView();
			    
			    int totalCount = service.getTotalCount2(membernum, keyword, kind); 
			    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
			    
			    
			    
			    int startIdx = (page - 1) * pageSize;
			    int endIdx = pageSize;

			    List<dv_orderDTO> dv_orderlist = service.getListByRange2(membernum, startIdx, endIdx, keyword, kind);

			    mav.addObject("dv_orderlist", dv_orderlist);
			    mav.addObject("currentPage", page);
			    mav.addObject("totalPages", totalPages);
			    mav.addObject("keyword", keyword);
			    mav.addObject("kind", kind);			    
			    mav.setViewName("myorderlist");
			    System.out.println(kind);
			    System.out.println(totalCount); 
			    System.out.println(totalPages);
			    return mav;
			}	
								
			//상세페이지
			@RequestMapping(value="board/orderdetail", method = RequestMethod.GET)
			public String orderdetail(dv_orderDTO dv_orderDTO, Model model) throws Exception {
				dv_orderDTO orderdetail = service.orderdetail(dv_orderDTO);
				model.addAttribute("orderdetail", orderdetail);
				return "orderdetail";
			}
			//반품 폼
			@RequestMapping(value="board/returnForm", method = RequestMethod.GET)
			public String returnForm(dv_orderDTO dv_orderDTO, Model model) throws Exception {
				System.out.println("123");
				System.out.println(dv_orderDTO);
				dv_orderDTO returnForm = service.orderform(dv_orderDTO);
				model.addAttribute("returnForm", returnForm);
				System.out.println("456");
				System.out.println(dv_orderDTO);
				return "returnForm";
			}
			//취소 폼
			@RequestMapping(value="board/cancelForm", method = RequestMethod.GET)
			public String cancelForm(dv_orderDTO dv_orderDTO, Model model) throws Exception {
				System.out.println("123");
				System.out.println(dv_orderDTO);
				dv_orderDTO returnForm = service.orderform(dv_orderDTO);
				model.addAttribute("returnForm", returnForm);
				System.out.println("456");
				System.out.println(dv_orderDTO);
				return "cancelForm";
			}
//교환반품취소
			//반품, 교환, 취소 추가
			@RequestMapping(value="board/returninsert", method = RequestMethod.POST)
			public String returninsert(itemreturnDTO itemreturnDTO, dv_orderDTO dv_orderDTO) throws Exception{
				int returninsert = service.returninsert(itemreturnDTO);
				int orderstaupdate = service.orderstaupdate(dv_orderDTO);
				return "redirect:myreturnlist";						
			}
			//반품 상세보기
			@RequestMapping(value="board/returndetail", method = RequestMethod.GET)
			public String returndetail(@RequestParam("returnnum")int returnnum, Model model) throws Exception {				
				itemreturnDTO returndetail = service.returndetail(returnnum);						
				model.addAttribute("returndetail", returndetail);
				return "returndetail";	
			}
			
			//취소 상세보기
			@RequestMapping(value="board/canceldetail", method = RequestMethod.GET)
			public String canceldetail(@RequestParam("returnnum")int returnnum, Model model) throws Exception {				
				itemreturnDTO returndetail = service.returndetail(returnnum);						
				model.addAttribute("returndetail", returndetail);
				return "canceldetail";	
			}			
			//반품 교환 취소
			@RequestMapping(value="board/returndelete", method = RequestMethod.GET)
			public String returndelete(@RequestParam("returnnum")int returnnum, dv_orderDTO dv_orderDTO) throws Exception{				
				int returndelete = service.returndelete(returnnum);
				int orderstaupdate = service.ordersta(dv_orderDTO);
						return "redirect:myreturnlist";
			}
			
			
			//반품리스트, 페이징, 검색---------------------------------------------------------------------------------
			//반품/교환/취소 관리로 이동
			@ResponseBody
			@RequestMapping(value = "board/myreturnlist", method = { RequestMethod.GET, RequestMethod.POST })
			public ModelAndView myreturnlist(HttpSession session,HttpServletRequest request,
			    @RequestParam(defaultValue = "1") int page, // 현재 페이지
			    @RequestParam(defaultValue = "3") int pageSize, //한페이지에 들어가는 게시글 수
			    @RequestParam(defaultValue = "") String searchtype,
			    @RequestParam(defaultValue = "") String keyword,
			    @RequestParam(defaultValue = "") String kind
			) throws Exception {
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
						
				System.out.println(kind);
			    ModelAndView mav = new ModelAndView();
			    
			    int totalCount = service.getTotalCount(membernum, keyword, searchtype, kind); 
			    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
			    
			    
			    
			    int startIdx = (page - 1) * pageSize;
			    int endIdx = pageSize;

			    List<itemreturnDTO> returnlist = service.getListByRange(membernum, startIdx, endIdx, keyword, searchtype, kind);

			    mav.addObject("returnlist", returnlist);
			    mav.addObject("currentPage", page);
			    mav.addObject("totalPages", totalPages);
			    mav.addObject("keyword", keyword);
			    mav.addObject("searchtype", searchtype);
			    mav.addObject("kind", kind);			    
			    mav.setViewName("myreturnlist");
			    System.out.println(kind);
			    System.out.println(totalCount); 
			    System.out.println(totalPages);
			    return mav;
			}	
}
