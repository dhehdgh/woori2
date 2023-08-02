package kr.co.dong.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.dong.DTO.Page;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.reviewDTO;
import kr.co.dong.Service.BoardService;

@Controller
public class Boardcontroller{
	
	private static final Logger logger = LoggerFactory.getLogger(Boardcontroller.class);
	
	@Autowired
	private BoardService service;
	//주문목록
    //리스트, 페이징, 검색---------------------------------------------------------------------------------
    //주문목록으로 관리로 이동
    @RequestMapping(value = "board/myorderlist", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView orderlist(
        @RequestParam(defaultValue = "1") int page, // 현재 페이지
        @RequestParam(defaultValue = "3") int pageSize, //한페이지에 들어가는 게시글 수
        @RequestParam(defaultValue = "") String keyword,
        @RequestParam(defaultValue = "") String kind,
        Model model,reviewDTO reviewnum
    ) throws Exception {
       System.out.println(kind);
        ModelAndView mav = new ModelAndView();
        
        int totalCount = service.getTotalCount2(keyword, kind); 
        int totalPages = (int) Math.ceil((double) totalCount / pageSize);
        
        
        
        int startIdx = (page - 1) * pageSize;
        int endIdx = pageSize;

        List<dv_orderDTO> dv_orderlist = service.getListByRange2(startIdx, endIdx, keyword, kind);
        
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
	@RequestMapping(value="board/orderlistcartinsert",method=RequestMethod.GET)
		public String orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception{
		
		service.orderlistcartinsert(orderlistcartinsert);
		
		return "redirect:myorderlist";
	}
	//구매확정버튼
	@RequestMapping(value="board/buyok",method = RequestMethod.GET)
		public String buyok(dv_orderDTO dv_orderDTO) throws Exception{
		
		service.buyok(dv_orderDTO);
		
		return "redirect:myorderlist";
	}
	
	//등급
	@RequestMapping( value="board/myrating", method = RequestMethod.GET)
		public String myrating(@RequestParam("membernum")int membernum,Model model,memberDTO memberDTO) throws Exception{
		
		memberDTO mypoint = service.mypoint(memberDTO);
		
		model.addAttribute("mypoint", mypoint);
		
		return "myrating";
		}
	//리뷰관리(미작성리뷰)
	@RequestMapping( value="board/myreview", method = RequestMethod.GET)
		public String myreview(Model model,@RequestParam("num")int num) throws Exception{
			
			Page page = new Page();
			
			page.setNum(num);
			page.setCount(service.mynoreviewcount());
			
		
			List<reviewDTO> noreviewlist = null; 
					noreviewlist = service.noreviewlist(page.getDisplayPost(), page.getPostNum());
			
			model.addAttribute("noreviewlist", noreviewlist);
			model.addAttribute("page", page);
			
			//현재페이지
			model.addAttribute("select", num);
			
		return "myreview";
		}
	//작성한리뷰
	@RequestMapping( value="board/myreviewlist", method = RequestMethod.GET)
		public String myreviewlist(Model model,@RequestParam("num")int num) throws Exception{
		
			Page page = new Page();
			
			page.setNum(num);
			page.setCount(service.myreviewcount());
		
			List<reviewDTO> reviewlist = null;
			
			reviewlist = service.reviewlist(page.getDisplayPost(), page.getPostNum());
			
			model.addAttribute("reviewlist", reviewlist);
			model.addAttribute("page", page);
			
			//현재페이지
			model.addAttribute("select", num);
			
		return "myreviewlist";
		}
	//리뷰작성폼
	@RequestMapping( value="board/reviewForm", method = RequestMethod.GET)
		public String reviewForm(@RequestParam("buynum") int buynum,Model model) throws Exception{
			
		List<dv_orderDTO> reviewinsertdetail = service.reviewinsertdetail(buynum);
			
			model.addAttribute("reviewinsertdetail", reviewinsertdetail);
		return "reviewForm";
		}
	//리뷰작성
	@RequestMapping(value="board/reviewForm", method = RequestMethod.POST)
		public String reviewForm(reviewDTO reviewDTO, dv_orderDTO dv_orderDTO) throws Exception{
		
		service.reviewinsert(reviewDTO);
		
		service.reviewset(dv_orderDTO);
		
		return "redirect:myreviewlist?num=1";
	}
	//리뷰수정
	@RequestMapping( value="board/reviewupdate", method = RequestMethod.GET)
		public String reviewupdate(@RequestParam("reviewno") int reviewno,Model model) throws Exception{
			List<reviewDTO> reviewdetail = service.reviewdetail(reviewno);
			
			model.addAttribute("reviewdetail", reviewdetail);
		
		return "reviewupdate";
		}
	@RequestMapping(value="board/reviewupdate",method=RequestMethod.POST)
		public String reviewupdate(reviewDTO reviewupdate) throws Exception{
		
		service.reviewupdate(reviewupdate);
		
		return "redirect:myreviewlist";
	}
	//리뷰상세
	@RequestMapping( value="board/reviewdetail", method = RequestMethod.GET)
		public String reviewdetail(@RequestParam("reviewno") int reviewno,Model model) throws Exception{
		
		List<reviewDTO> reviewdetail = service.reviewdetail(reviewno);
		
		model.addAttribute("reviewdetail", reviewdetail);
		
		return "reviewdetail";
		}
	//교환/반품/취소/환불 상세
	@RequestMapping( value="board/returndetail", method = RequestMethod.GET)
		public String returndetail(itemreturnDTO itemreturnDTO,Model model) throws Exception{
		
		List<itemreturnDTO> returndetail = service.returndetail();
		
		model.addAttribute("returndetail", returndetail);
		
		return "returndetail";
		}
	//내문의내역
	@RequestMapping( value="board/myhelplist", method = RequestMethod.GET)
		public String myhelplist(Model model,@RequestParam("num")int num) throws Exception{
			
			Page page = new Page();
			
			page.setNum(num);
			page.setCount(service.myhelpcount());
		
			
			List<help_boardDTO> helplist = null; 
			helplist= service.helplist(page.getDisplayPost(), page.getPostNum());
					
			model.addAttribute("helplist", helplist);
			model.addAttribute("page", page);
		
			//현재페이지
			model.addAttribute("select", num);
			
		return "myhelplist";
		}
	//내리뷰삭제
	@RequestMapping(value="board/reviewdelete", method=RequestMethod.GET)
		public String reviewdelete(@RequestParam("reviewno")int reviewno) throws Exception{
			service.reviewdelete(reviewno);
		return "redirect:myreviewlist";
		}
	//1:1문의하기폼
	@RequestMapping( value="board/helpboard", method = RequestMethod.GET)
		public String helpboard() throws Exception{
		
		return "helpboard";
		}
	//1:1문의
	@RequestMapping( value="board/helpboard", method = RequestMethod.POST)
		public String helpinsert(help_boardDTO help_boardDTO) throws Exception{
	
			service.helpinsert(help_boardDTO);
		return "redirect:myhelplist";
		}

	//문의내역상세
	@RequestMapping( value="board/myhelpdetail", method = RequestMethod.GET)
		public String myhelpdetail(@RequestParam("hno") int hno ,Model model) throws Exception{
		
			help_boardDTO helpdetail = service.helpdetail(hno);
			
			model.addAttribute("helpdetail", helpdetail);
		
		
		return "myhelpdetail";
		}
	//문의내역수정폼
	@RequestMapping( value="board/myhelpupdate", method = RequestMethod.GET)
		public String myhelpupdate(@RequestParam("hno") int hno ,Model model) throws Exception{
			
			help_boardDTO helpdetail = service.helpdetail(hno);
		
			model.addAttribute("helpupdate", helpdetail);
		
		return "myhelpupdate";
		}
	//문의수정하기
	@RequestMapping(value="board/myhelpupdate", method = RequestMethod.POST)
		public String myhelpupdate(help_boardDTO helpboard) throws Exception{
		
		service.helpupdate(helpboard);
			
		return "redirect:myhelplist";
	}
	//문의취소하기
	@ResponseBody
	@RequestMapping(value="board/myhelpcancel", method = RequestMethod.POST)
	public int myhelpcancel(@RequestParam("hno") int hno) throws Exception{
	
		return service.helpcancel(hno);
	}
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

	//반품리스트, 페이징, 검색---------------------------------------------------------------------------------
    //반품/교환/취소 관리로 이동
    @ResponseBody
    @RequestMapping(value = "board/myreturnlist", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView myreturnlist(
        @RequestParam(defaultValue = "1") int page, // 현재 페이지
        @RequestParam(defaultValue = "3") int pageSize, //한페이지에 들어가는 게시글 수
        @RequestParam(defaultValue = "") String searchtype,
        @RequestParam(defaultValue = "") String keyword,
        @RequestParam(defaultValue = "") String kind
    ) throws Exception {
       System.out.println(kind);
        ModelAndView mav = new ModelAndView();
        
        int totalCount = service.getTotalCount(keyword, searchtype, kind); 
        int totalPages = (int) Math.ceil((double) totalCount / pageSize);
        
        
        
        int startIdx = (page - 1) * pageSize;
        int endIdx = pageSize;

        List<itemreturnDTO> returnlist = service.getListByRange(startIdx, endIdx, keyword, searchtype, kind);

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