package kr.co.dong.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.dong.Service.BoardService;


@Controller
public class BoardController  {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//인스턴스화 사용하는법 : 강한결합
//	HomeService homeService = new HomeService();
	//참조형으로 사용하는법
	@Inject	//@Autowired(어노테이션) : spring 전용
	BoardService BoardService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		
		return "home";
	}
	//테이블샘플
			@RequestMapping("board/sampleBoard")
			public String sampleBoard() throws Exception {
				return "sampleBoard";
			}
	//마이페이지 로고 눌렀을때 주문목록 가는 매핑
		@RequestMapping("board/myorderlist")
		public String orderlist() throws Exception {
			return "myorderlist";
		}

//my 정보	
		//내정보수정로 이동
			@RequestMapping("board/myupdate")
			public String myupdate() throws Exception {
				return "myupdate";
			}
		//배송지관리로 이동
			@RequestMapping("board/addrlist")
			public String addrlist() throws Exception {
				return "addrlist";
			}
		//회원탈퇴로 이동
			@RequestMapping("board/mydeleteView")
			public String mydeleteView() throws Exception {
				return "mydeleteView";
			}
			
			
//my 활동
		//내찜목록로 이동
			@RequestMapping("board/mywishlist")
			public String mywishlist() throws Exception {
				return "mywishlist";
			}
		//반품/교환/취소 관리로 이동
			@RequestMapping("board/myreturnlist")
			public String myreturnlist() throws Exception {
				return "myreturnlist";
			}	
			
}
