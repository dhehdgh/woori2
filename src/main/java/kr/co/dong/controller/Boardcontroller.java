package kr.co.dong.controller;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.HashMap;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.apache.ibatis.annotations.Param;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.fasterxml.jackson.core.type.TypeReference;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PathVariable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.dong.DTO.Page;
import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.boardDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dr_reviewDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.dv_order_itemDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.iv_itemDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import kr.co.dong.DTO.reviewDTO;
import kr.co.dong.Service.BoardService;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

@Controller
public class Boardcontroller  {
	@Autowired
	BoardService service;	
	@Autowired
	private HttpSession session;
	
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
		
	       String url = "jdbc:mysql://localhost:3306/woori?";
	       String username = "root";
	       String password = "1234";
		
	       try {
	           // JDBC 드라이버 로드
	    	   Class.forName("com.mysql.cj.jdbc.Driver");
	           // 데이터베이스 연결
	           Connection connection = DriverManager.getConnection(url, username, password);
	           
	           // 데이터베이스 쿼리 실행
	           Statement statement = connection.createStatement();
	           ResultSet resultSet = statement.executeQuery
	        		   ("SELECT t.*,\n"
	        		   		+ "       COALESCE(t.rstarsum / t.rcount, 0) AS ravg,\n"
	        		   		+ "       ROW_NUMBER() OVER () AS numbers\n"
	        		   		+ "FROM (\n"
	        		   		+ "    SELECT i.itemnum,\n"
	        		   		+ "           i.itemname,\n"
	        		   		+ "           i.itempay,\n"
	        		   		+ "           i.itemcontent,\n"
	        		   		+ "           i.sale,\n"
	        		   		+ "           im.url,\n"
	        		   		+ "           im.imgname,\n"
	        		   		+ "           SUM(iv.itembuycnt) AS total_buycnt,\n"
	        		   		+ "           COALESCE(matching_counts.count, 0) AS heart,\n"
	        		   		+ "           COALESCE(review_count.count, 0) AS rcount,\n"
	        		   		+ "           COALESCE(review_sum.sum, 0) AS rstarsum\n"
	        		   		+ "    FROM item i\n"
	        		   		+ "    LEFT JOIN iv_item iv ON i.itemnum = iv.itemnum\n"
	        		   		+ "    LEFT JOIN img im ON i.itemnum = im.itemnum\n"
	        		   		+ "    LEFT JOIN (\n"
	        		   		+ "        SELECT itemnum, COUNT(*) AS count\n"
	        		   		+ "        FROM mylist\n"
	        		   		+ "        GROUP BY itemnum\n"
	        		   		+ "    ) AS matching_counts ON i.itemnum = matching_counts.itemnum\n"
	        		   		+ "    LEFT JOIN (\n"
	        		   		+ "        SELECT itemnum, COUNT(*) AS count\n"
	        		   		+ "        FROM review\n"
	        		   		+ "        GROUP BY itemnum\n"
	        		   		+ "    ) AS review_count ON i.itemnum = review_count.itemnum\n"
	        		   		+ "    LEFT JOIN (\n"
	        		   		+ "        SELECT itemnum, SUM(rstar) AS sum\n"
	        		   		+ "        FROM review\n"
	        		   		+ "        GROUP BY itemnum\n"
	        		   		+ "    ) AS review_sum ON i.itemnum = review_sum.itemnum\n"
	        		   		+ "    GROUP BY i.itemnum, i.itemname, i.itempay, i.itemcontent, i.sale,\n"
	        		   		+ "    im.url , im.imgname, matching_counts.count, review_count.count, review_sum.sum\n"
	        		   		+ "    ORDER BY total_buycnt DESC\n"
	        		   		+ "    LIMIT 5\n"
	        		   		+ ") t;");
	           
	           List<itemDTO> bestItems = new ArrayList<>();
	           while (resultSet.next()) {
	               itemDTO item = new itemDTO();
	               item.setItemnum(resultSet.getInt("itemnum"));
	               item.setItemname(resultSet.getString("itemname"));
	               item.setItempay(resultSet.getInt("itempay"));
	               item.setSale(resultSet.getInt("sale"));
	               item.setItemcontent(resultSet.getString("itemcontent"));
	               item.setUrl(resultSet.getString("url"));
	               item.setImgname(resultSet.getString("imgname"));
	               item.setTotal_buycnt(resultSet.getInt("total_buycnt"));
	               item.setHeart(resultSet.getInt("heart"));
	               item.setRcount(resultSet.getInt("rcount"));
	               item.setRstarsum(resultSet.getInt("rstarsum"));
	               item.setRavg(resultSet.getInt("ravg"));
	               item.setNumbers(resultSet.getInt("numbers"));
	               bestItems.add(item);
	           }
	           
	           ResultSet resultSetNew = statement.executeQuery(
	        		    "SELECT item.*, img.*, " +
	        		    "COALESCE(matching_counts.count, 0) AS heart, COALESCE(item_count.count, 0) AS count, " +
	        		    "COALESCE(review_count.count, 0) AS rcount, COALESCE(review_sum.sum, 0) AS rstarsum, " +
	        		    "CASE WHEN COALESCE(review_count.count, 0) > 0 THEN COALESCE(review_sum.sum, 0) / COALESCE(review_count.count, 0) " +
	        		    "ELSE 0 END AS ravg, COALESCE(iv_item.itembuycnt, 0) AS buycntsum " +
	        		    "FROM item " +
	        		    "LEFT JOIN img ON item.itemnum = img.itemnum " +
	        		    "LEFT JOIN (SELECT itemnum, COUNT(*) AS count FROM mylist GROUP BY itemnum) AS matching_counts " +
	        		    "ON item.itemnum = matching_counts.itemnum " +
	        		    "LEFT JOIN (SELECT COUNT(*) AS count FROM item) AS item_count ON 1=1 " +
	        		    "LEFT JOIN (SELECT itemnum, COUNT(*) AS count, SUM(rstar) AS sum FROM review GROUP BY itemnum) " +
	        		    "AS review_count ON item.itemnum = review_count.itemnum " +
	        		    "LEFT JOIN (SELECT itemnum, SUM(rstar) AS sum FROM review GROUP BY itemnum) " +
	        		    "AS review_sum ON item.itemnum = review_sum.itemnum " +
	        		    "LEFT JOIN (SELECT itemnum, SUM(itembuycnt) AS itembuycnt FROM iv_item GROUP BY itemnum) " +
	        		    "AS iv_item ON item.itemnum = iv_item.itemnum " +
	        		    "ORDER BY itemdate DESC " + 
	        		    "LIMIT 0, 8;"
	        		);
	           
	           List<itemDTO> newItems = new ArrayList<>();
	           while (resultSetNew.next()) {
	               itemDTO item = new itemDTO();
	               item.setItemnum(resultSetNew.getInt("itemnum"));
	               item.setItemname(resultSetNew.getString("itemname"));
	               item.setItempay(resultSetNew.getInt("itempay"));
	               item.setSale(resultSetNew.getInt("sale"));
	               item.setItemcontent(resultSetNew.getString("itemcontent"));
	               item.setUrl(resultSetNew.getString("url"));
	               item.setImgname(resultSetNew.getString("imgname"));
	               item.setHeart(resultSetNew.getInt("heart"));
	               item.setRcount(resultSetNew.getInt("rcount"));
	               item.setRstarsum(resultSetNew.getInt("rstarsum"));
	               item.setRavg(resultSetNew.getInt("ravg"));
	               item.setItemdate(resultSetNew.getString("itemdate"));
	               newItems.add(item);
	           }
	           
	    resultSetNew.close();
	    resultSet.close();
	    statement.close();
	    connection.close();
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("best", bestItems);
		model.addAttribute("newItem", newItems);
		
		System.out.println(model);
		return "home";
	       } catch (Exception e) {
	           e.printStackTrace();
	           return "error"; // 에러 페이지로 리디렉션 또는 에러 처리
	       }
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
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
				
				
				dv_orderDTO orderdetail = service.orderdetail(membernum,dv_orderDTO);
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
			
			
			//----------------------------------------카테고리 관련-----------------------------------------------------

			// 카테고리 - 테이블 샘플 이동
			@RequestMapping(value="board/sampleBoard", method = RequestMethod.GET)
			public String sampleBoard() {

			return "sampleBoard";
			}

			// 카테고리 - 테이블 샘플 이동
			@RequestMapping(value="board/admin", method = RequestMethod.GET)
			public String admin() {

			return "admin";
			}

			@RequestMapping(value = "board/allItem", method = RequestMethod.GET)
			public ModelAndView allitem() throws Exception {
			ModelAndView mav = new ModelAndView();

			List<itemDTO> allitem = service.allItem();
			System.out.println("-----------------------allitem-----------------------:"+allitem);
			List<itemDTO> bestItem = service.bestItem();
			System.out.println("-----------------------bestItem-----------------------:"+bestItem);

			mav.addObject("item", allitem);
			mav.addObject("best", bestItem);
			mav.setViewName("allItem");

			System.out.println("allItem" + allitem);
			return mav;
			}

			//----------------------------------------header 관련-----------------------------------------------------
			// 장바구니 버튼 클릭
			@RequestMapping(value = "board/cartView", method = RequestMethod.GET)
			public ModelAndView cartView(@RequestParam int membernum) throws Exception {
			ModelAndView mav = new ModelAndView();

			List<cartDTO> cartView = service.list(membernum);


			mav.addObject("cartView", cartView);
			mav.setViewName("cartView");

			System.out.println("cartView" + cartView);
			return mav;
			}

			//----------------------------------------장바구니 관련-----------------------------------------------------
			//단일 클릭시 상품 결제창 이동
			@RequestMapping(value="board/buyView", method = RequestMethod.GET)
			public ModelAndView buyView(@RequestParam("cartno") int cartno, @RequestParam("membernum") int membernum) throws Exception {
			ModelAndView mav = new ModelAndView();



			List<cartDTO> buyView = service.list1(cartno,membernum);
			mav.addObject("buyView", buyView);
			mav.addObject("membernum", membernum);
			mav.setViewName("buyView");

			System.out.println("----------------------------buyView----------------------"+buyView);
			System.out.println("----------------------------mav----------------------"+mav);
			return mav;
			}

			//전체 / 선택 상품 결제창 이동
			@GetMapping(value = "board/buyView1")
			public ModelAndView buyView1(HttpSession session, @RequestParam("cartno") String cartno, @RequestParam("membernum") String
			membernum)
			throws Exception {
			List<Integer> cartNumbers = Arrays.stream(cartno.split(","))
			.map(Integer::parseInt)
			.collect(Collectors.toList());

			List<Integer> memberNumbers = Arrays.stream(membernum.split(","))
			.map(Integer::parseInt)
			.distinct()
			.collect(Collectors.toList());

			System.out.println("----------------------------memberNumbers----------------------"+memberNumbers);
			System.out.println("----------------------------cartNumbers----------------------"+cartNumbers);

			Map<String, Object> response = new HashMap<>();

			List<cartDTO> buyView1 = service.list2(cartNumbers,memberNumbers);


			response.put("buyView1", buyView1);
			response.put("cartnos", cartNumbers);
			response.put("membernums", memberNumbers);

			// Create a ModelAndView object and pass the data and view name
			ModelAndView modelAndView = new ModelAndView("buyView1");
			modelAndView.addObject("response", response);
			modelAndView.setViewName("buyView1");

			System.out.println(modelAndView);
			return modelAndView;
			}


			//옵션변경 클릭후 값 넘기기
			@GetMapping("board/itemOption")
			public ResponseEntity<List<itemDTO>> itemOption(@RequestParam("itemnum") int itemnum)
			throws Exception {
			List<itemDTO> itemOption = service.itemOption(itemnum);
			System.out.println("itemOption"+itemOption);

			return new ResponseEntity<>(itemOption, HttpStatus.OK);
			}

			//컬러 옵션 클릭후 사이즈 옵션 변경
			@PostMapping("board/colorSelect")
			public ResponseEntity<List<iv_itemDTO>> colorSelect(@RequestParam("itemnum") String itemnum, String codestring)
			throws Exception {

			System.out.println("Received itemnum: " + itemnum);
			System.out.println("Received itemnum: " + codestring);

			List<codetableDTO> colorValue1 = service.colorValue(codestring);
			System.out.println("colorValue"+colorValue1);

			List<Integer> itemColorList = new ArrayList<>();
			int colorValue = 0;
			for (codetableDTO dto : colorValue1) {
			colorValue = dto.getItemcolor();
			itemColorList.add(colorValue);
			System.out.println(colorValue);
			}

			List<iv_itemDTO> colorSelect = service.colorSelect(itemnum, colorValue);
			System.out.println("colorSelect: " + colorSelect);

			return new ResponseEntity<>(colorSelect, HttpStatus.OK);
			}

			//사이즈 옵션 클릭후 컬러 옵션 변경
			@PostMapping("board/sizeSelect")
			public ResponseEntity<List<iv_itemDTO>> sizeSelect(@RequestParam("itemnum") String itemnum, String codestring) throws Exception {
			System.out.println("Received itemnum: " + itemnum);

			List<codetableDTO> sizeValue1 = service.sizeValue(codestring);
			System.out.println("sizeValue"+sizeValue1);

			List<Integer> itemsizeList = new ArrayList<>();
			int sizeValue = 0;
			for (codetableDTO dto : sizeValue1) {
			sizeValue = dto.getItemsize();
			itemsizeList.add(sizeValue);
			System.out.println("sizeValue: " + sizeValue);

			}

			List<iv_itemDTO> sizeSelect = service.sizeSelect(itemnum, sizeValue);
			System.out.println("colorSelect: " + sizeSelect);
			return new ResponseEntity<>(sizeSelect, HttpStatus.OK);
			}




			// 장바구니 단일 삭제
			@RequestMapping(value = "board/cartDelete", method = RequestMethod.POST)

			public String cartDelete(@RequestParam("cartno") int cartno )throws
			Exception {

			int r = service.cartDelete(cartno);

			System.out.println("cartno: "+cartno);


			int membernum = 0; // Set a default value if membernum is not found in the session
			Object memberNumObj = session.getAttribute("user");
			if (memberNumObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) memberNumObj;
			membernum = (int) userMap.get("membernum");
			}

			System.out.println("membernum :"+membernum);

			return "redirect:cartView?membernum=" + membernum;
			}

			// 장바구니 비우기
			@PostMapping("board/cartClear")
			public ModelAndView cartClear(@RequestParam("membernum") int membernum) throws Exception {
			// 장바구니 비우기 기능 실행
			service.cartClear(membernum);

			int membernum1 = 0; // Set a default value if membernum is not found in the session
			Object memberNumObj = session.getAttribute("user");
			if (memberNumObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) memberNumObj;
			membernum1 = (int) userMap.get("membernum");
			}

			System.out.println("----------membernum--------------- :"+membernum1);

			// 장바구니 페이지로 리다이렉트
			return new ModelAndView("redirect:cartView?membernum=" + membernum1);

			}


			// 카트 선택 삭제
			@ResponseBody

			@RequestMapping(value = "board/selectDelete", method = RequestMethod.POST, consumes = "application/json")
			public int selectDelete(HttpSession session, @RequestBody List<String> chArr)
			throws Exception {
			int result = 0;
			int cartNum = 0;


			int membernum = 0; // Set a default value if membernum is not found in the session
			Object memberNumObj = session.getAttribute("user");
			if (memberNumObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) memberNumObj;
			membernum = (int) userMap.get("membernum");
			}


			for (String i : chArr) {
			cartNum = Integer.parseInt(i);
			cartDTO cart = new cartDTO();
			cart.setMembernum(membernum);
			cart.setCartno(cartNum);
			service.selectDelete(cart);
			System.out.println("----------------------------------cartNum--------------------------- :"+cartNum);
			System.out.println("----------------------------------cart--------------------------- :"+cart);
			System.out.println("----------------------------------membernum--------------------------- :"+membernum);

			}
			result = 1;
			return result;


			}



			// 상품 수량 변경
			@RequestMapping(value="board/updateItemcnt", method=
			RequestMethod.POST)
			public ModelAndView updateItemcnt(cartDTO CartDTO, @RequestParam("membernum") int membernum) throws Exception{

			System.out.println("--------------------------CartDTO--------------------------------"+CartDTO);
			System.out.println("--------------------------membernum--------------------------------"+membernum);

			int membernum1 = 0; // Set a default value if membernum is not found in the session
			Object memberNumObj = session.getAttribute("user");
			if (memberNumObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) memberNumObj;
			membernum1 = (int) userMap.get("membernum");
			}

			int r = service.updateItemcnt(CartDTO,membernum);



			return new ModelAndView("redirect:cartView?membernum=" + membernum1);

			}

			//최종 옵션 변경

			@RequestMapping(value = "board/updateOption",
			method = RequestMethod.POST)
			public void updateOption( @RequestParam("cartno") int cartno, @RequestParam(value = "iv_itemnum", required = false) Integer iv_itemnum ,@RequestParam("itemnum") int itemnum, String codestring,String codestring1, HttpServletResponse response)
			throws Exception {
			response.setContentType("application/json");

			List<codetableDTO> colorValue1 = service.colorValue1(codestring);
			List<codetableDTO> sizeValue1 = service.sizeValue1(codestring1);


			List<Integer> itemsizeList = new ArrayList<>();
			int sizeValue = 0;
			for (codetableDTO dto : sizeValue1) {
			sizeValue = dto.getItemsize();
			itemsizeList.add(sizeValue);
			System.out.println("sizeValue: " + sizeValue);
			}

			List<Integer> itemColorList = new ArrayList<>();
			int colorValue = 0;
			for (codetableDTO dto : colorValue1) {
			colorValue = dto.getItemcolor();
			itemColorList.add(colorValue);
			System.out.println("colorValue: " + colorValue);
			}

			List<iv_itemDTO> iv_itenumList = service.iv_itemnumSerch(colorValue, sizeValue, itemnum);
			System.out.println("iv_itenumList: " + iv_itenumList);

			List<Integer> itemnumList = new ArrayList<>();
			int iv_itemnum1 = 0;
			for (iv_itemDTO dto : iv_itenumList) {
			iv_itemnum1 = dto.getIv_itemnum();
			itemnumList.add(iv_itemnum1);
			System.out.println("iv_itemnum: " + iv_itemnum1);
			}
			iv_itemnum = iv_itemnum1;
			System.out.println("iv_itemnum: "+iv_itemnum);

			int r = service.updateOption(cartno, iv_itemnum);
			System.out.println("r: "+iv_itemnum);
			// JSON 응답 데이터 구성
			JSONObject jsonResponse = new JSONObject();
			jsonResponse.put("status", "success");
			jsonResponse.put("message", "옵션 변경이 완료되었습니다.");

			// JSON 배열에 필요한 데이터 추가 (예시로 itemsizeList와 itemColorList를 추가)
			JSONArray itemsizeJSONArray = new JSONArray(itemsizeList);
			JSONArray itemColorJSONArray = new JSONArray(itemColorList);
			jsonResponse.put("itemsizeList", itemsizeJSONArray);
			jsonResponse.put("itemColorList", itemColorJSONArray);

			// JSON 응답을 클라이언트로 전송
			PrintWriter out = response.getWriter();
			out.print(jsonResponse);
			out.flush();

			response.setStatus(HttpServletResponse.SC_OK);
			}

			//----------------------------------------결제 관련-----------------------------------------------------
			// 단일 주문

			@RequestMapping(value = "board/orderInsert", method = { RequestMethod.GET, RequestMethod.POST })

			public String orderInsert(dv_orderDTO dv_OrderDTO, dv_order_itemDTO dv_Order_itemDTO, cartDTO CartDTO, memberDTO MemberDTO, iv_itemDTO iv_itemDTO, @RequestParam("usePoint") int usePoint)
			throws Exception {
			System.out.println("iv_itemDTO : "+iv_itemDTO);

			service.orderInsert(dv_OrderDTO);

			int r = service.orderBuynum(dv_OrderDTO);

			dv_Order_itemDTO.setBuynum(r);

			service.orderInsert1(dv_Order_itemDTO);

			service.cartUpdate(CartDTO);

			MemberDTO.setUsePoint(usePoint);
			service.pointUpdate(MemberDTO);
			service.itemcntsub(iv_itemDTO);


			int point = 0; // Set a default value if membernum is not found in the session
			int pointac = 0;

			Object userObj = session.getAttribute("user");
			if (userObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) userObj;
			point = (int) userMap.get("point");
			pointac = (int) userMap.get("pointac");

			service.pointValue(MemberDTO);

			int updatedPoint = MemberDTO.getPoint();
			int updatedPointac = MemberDTO.getPointac();


			// Update the point and pointac with the calculated values
			point += updatedPoint;
			pointac += updatedPointac;

			// Save the updated point and pointac back to the 'user' object in the session
			userMap.put("point", point);
			userMap.put("pointac", pointac);

			// Save the 'user' object back to the session
			session.setAttribute("user", userMap);

			System.out.println("----------------------------------userMap--------------------------- :"+userMap);
			}


			return "redirect:/";
			}


			//전체/선택 상품 결제
			@RequestMapping(value = "board/orderInsert1", method = { RequestMethod.GET, RequestMethod.POST })

			public String orderInsert1(dv_orderDTO dv_OrderDTO, dv_order_itemDTO dv_Order_itemDTO, cartDTO CartDTO, memberDTO MemberDTO, iv_itemDTO iv_itemDTO, @RequestParam("usePoint") int usePoint,
			@RequestParam("iv_itemnumList") List<Integer> iv_itemnumList, @RequestParam("itemcntList") List<Integer> itemcntList)
			throws Exception {


			System.out.println("iv_itemnumList:" + iv_itemnumList);
			System.out.println("itemcntList:" + itemcntList);

			List<kr.co.dong.DTO.iv_itemDTO> updateitemcList = new ArrayList<>();
			for (int i = 0; i < iv_itemnumList.size(); i++) {
			iv_itemDTO itemUpdateWrapper = new iv_itemDTO();
			itemUpdateWrapper.setIv_itemnum(iv_itemnumList.get(i));
			itemUpdateWrapper.setItemcnt(itemcntList.get(i));
			updateitemcList.add(itemUpdateWrapper);
			}

			System.out.println("updateitemcList :"+updateitemcList);

			service.orderInsert(dv_OrderDTO);

			int r = service.orderBuynum(dv_OrderDTO);
			System.out.println("r=" + r);

			dv_Order_itemDTO.setBuynum(r);
			System.out.println("buynum 값: " + dv_Order_itemDTO.getBuynum());

			service.orderInsert2(dv_Order_itemDTO);

			service.cartUpdate1(CartDTO);

			MemberDTO.setUsePoint(usePoint);
			service.pointUpdate(MemberDTO);

			service.itemcntsub1(updateitemcList);

			int point = 0; // Set a default value if membernum is not found in the session
			int pointac = 0;

			Object userObj = session.getAttribute("user");
			if (userObj != null) {
			Map<String, Object> userMap = (Map<String, Object>) userObj;
			point = (int) userMap.get("point");
			pointac = (int) userMap.get("pointac");

			service.pointValue(MemberDTO);

			int updatedPoint = MemberDTO.getPoint();
			int updatedPointac = MemberDTO.getPointac();


			// Update the point and pointac with the calculated values
			point += updatedPoint;
			pointac += updatedPointac;

			// Save the updated point and pointac back to the 'user' object in the session
			userMap.put("point", point);
			userMap.put("pointac", pointac);

			// Save the 'user' object back to the session
			session.setAttribute("user", userMap);

			System.out.println("----------------------------------userMap--------------------------- :"+userMap);
			}




			return "redirect:/";
			}

			//----------------------------------------주소 관련-----------------------------------------------------

			//팝업배송지리스트로 이동
			@RequestMapping(value="board/popaddrlist", method = RequestMethod.GET)

			public String popaddrlist(HttpSession
			session,HttpServletRequest request,Model model)throws Exception {

			Map user = (Map)session.getAttribute("user");
			int membernum = (int) user.get("membernum");
			System.out.println("세션에 저장되어 있는 변수: " + membernum);

			List<addressDTO> addrlist = service.addrlist(membernum);
			model.addAttribute("addrlist", addrlist);
			return "popaddrlist";
			}

			@RequestMapping(value="board/popaddrlist1", method = RequestMethod.GET)

			public String popaddrlist1(HttpSession
			session,HttpServletRequest request, Model model)throws
			Exception {
			Map user = (Map)session.getAttribute("user");
			int membernum = (int) user.get("membernum");
			System.out.println("세션에 저장되어 있는 변수: " + membernum);

			List<addressDTO> addrlist = service.addrlist(membernum);
			model.addAttribute("addrlist", addrlist);
			return "popaddrlist1";

			}

			//팝업기본배송지 수정
			@RequestMapping(value="board/popaddrbasic1",
			method = RequestMethod.GET)
			public String popaddrbasic1(@RequestParam("addrnum")int addrnum)throws
			Exception {
			int addrbasic = service.addrbasic(addrnum);
			return "redirect:popaddrlist1";
			}
			

			//팝업배송지추가로 이동
			@RequestMapping(value="board/popaddrinsert1",
			method = RequestMethod.GET)
			public String popaddrinsert1()throws
			Exception {
			return "popaddrinsert1";
			}
			


			//팝업배송지 추가
			@RequestMapping(value="board/popaddrinsert1",
			method = RequestMethod.POST)
			public String popaddrinsert1(HttpSession
			session, HttpServletRequest request, addressDTO addressDTO) throws Exception{
			Map user = (Map)session.getAttribute("user");
			int membernum = (int) user.get("membernum");
			System.out.println("세션에 저장되어 있는 변수: " + membernum);

			int addrinsert = service.addrinsert(membernum,addressDTO);
			return "redirect:popaddrlist1";

			}
		
			//팝업배송지수정페이지로 이동
			@RequestMapping(value="board/popaddrupdate1", method = RequestMethod.GET)
			public String popaddrupdate1(@RequestParam("addrnum")int addrnum, Model model)throws Exception {
			addressDTO addrupdate = service.addrdetail(addrnum);
			model.addAttribute("addrupdate",addrupdate);
			return "popaddrupdate1";
			}
		
			//팝업배송지수정
			@RequestMapping(value ="board/popaddrupdate1", method = RequestMethod.POST)
			public String popaddrupdate1(addressDTO addressDTO) throws Exception{
			int addrupdate = service.addrupdate(addressDTO);
			return "redirect:popaddrlist1";
			}

			
			//팝업배송지 삭제
			@RequestMapping(value="board/popaddrdelete1", method = RequestMethod.GET)
			public String popaddrdelete1(@RequestParam("addrnum")int addrnum) throws Exception{
			int addrdelete = service.addrdelete(addrnum);
			return "redirect:popaddrlist1";
			}


			//주소 선택후 값 넘기기
			@GetMapping("board/addrSelect")
			public ResponseEntity<List<addressDTO>> addrSelect(@RequestParam("addrnum") int addrnum) throws Exception {
			List<addressDTO> addrSelect = service.addrSelect(addrnum);
			System.out.println("addrSelect"+addrSelect);

			session.setAttribute("selectedAddress", addrSelect);

			return new ResponseEntity<>(addrSelect, HttpStatus.OK);
			}

			//주소 선택후 값 넘기기
			@GetMapping("board/addrSelect1")
			public ResponseEntity<List<addressDTO>> addrSelect1(@RequestParam("membernum") int membernum) throws Exception {
			List<addressDTO> addrSelect1 = service.addrSelect1(membernum);
			System.out.println("addrSelect1"+addrSelect1);

			session.setAttribute("selectedAddress", addrSelect1);

			return new ResponseEntity<>(addrSelect1, HttpStatus.OK);
			}

			//----------------------------------------board 관련-----------------------------------------------------

			// 공지사항 클릭

			@RequestMapping(value = "board/boardList", method = RequestMethod.GET)

			public ModelAndView boardList
			(@RequestParam(defaultValue
			= "1") int page,

			@RequestParam(defaultValue = "10") int pageSize)
			throws Exception {

			ModelAndView mav = new ModelAndView();

			int totalCount = service.boardTotalCount();

			int totalPages
			= (int) Math.ceil((double) totalCount
			/ pageSize);

			int startIndex
			= (page - 1) * pageSize;
			int endIndex
			= pageSize;


			List<boardDTO> boardList = service.boardList(startIndex, endIndex);

			mav.addObject("boardList", boardList);

			mav.addObject("currentPage", page);
			mav.addObject("totalPages", totalPages);
			mav.setViewName("boardList");


			return mav;
			}

			//검색 기능
			@PostMapping("board/boardSearch")
			public String boardSearch(@RequestBody Map<String, String> searchData, Model model) {
			try {
			String searchField = searchData.get("searchField");
			String searchKeyword = searchData.get("searchKeyword");

			List<boardDTO> searchResults = service.boardSearch(searchField, searchKeyword);

			model.addAttribute("searchResults", searchResults);

			// Return the new view (boardSearchResults.jsp) to display the search results
			return "boardSearchResults";
			} catch (Exception e) {
			e.printStackTrace();
			// You can handle the error and return an appropriate response or error page
			return "errorPage"; // Replace "errorPage" with the actual error page view name
			}

			}

			// 게시물 클릭
			@RequestMapping(value = "board/boardDetail", method = RequestMethod.GET)
			public ModelAndView boardDetail(@RequestParam("bno") int bno) throws Exception {
			ModelAndView mav = new ModelAndView();
			int r = service.viewCntUp(bno);

			List<boardDTO> boardDetail = service.boardDetail(bno);


			mav.addObject("boardDetail", boardDetail);
			mav.setViewName("boardDetail");



			System.out.println("boardDetail" + boardDetail);
			return mav;

			}

			// 글쓰기 클릭

			@RequestMapping(value = "board/boardRegister", method = RequestMethod.GET)

			public ModelAndView boardRegister(@RequestParam("membernum") int membernum) throws Exception {
			ModelAndView mav = new ModelAndView();


			List<memberDTO> boardRegister = service.boardRegister(membernum);


			mav.addObject("boardRegister", boardRegister);
			mav.setViewName("boardRegister");



			System.out.println("boardRegister" + boardRegister);
			return mav;
			}

			//게시물 삭제
			@RequestMapping(value="board/boardDelete", method = RequestMethod.GET)
			public String boardDelete(@RequestParam("bno")int bno) throws Exception{
			int boardDelete = service.boardDelete(bno);
			return "redirect:boardList";
			}

			//게시물 추가
			@RequestMapping(value="board/boardInsert", method = RequestMethod.POST)
			public String boardInsert(HttpSession session, HttpServletRequest request, boardDTO boardDTO) throws Exception{

			Map user = (Map)session.getAttribute("user");
			int membernum = (int) user.get("membernum");
			System.out.println("세션에 저장되어 있는 변수: " + membernum);

			int boardInsert = service.boardInsert(membernum,boardDTO);
			return "redirect:boardList";
			}

			// 게시물 수정 클릭
			@RequestMapping(value = "board/boardUpdateView", method = RequestMethod.GET)
			public ModelAndView boardUpdateView(@RequestParam("bno") int bno) throws Exception {
			ModelAndView mav = new ModelAndView();

			List<boardDTO> boardUpdateView = service.boardUpdateView(bno);


			mav.addObject("boardUpdateView", boardUpdateView);
			mav.setViewName("boardUpdateView");


			return mav;
			}

			//게시물 수정
			@RequestMapping(value="board/boardUpdate", method = RequestMethod.POST)
			public String boardUpdate(boardDTO boardDTO) throws Exception{
			int boardUpdate = service.boardUpdate(boardDTO);
			int bno = boardDTO.getBno();

			return "redirect:boardDetail?bno="+bno;
			}

			//----------------------------------------help 관련-----------------------------------------------------

			// 문의사항 클릭
			@RequestMapping(value = "board/helpList", method = RequestMethod.GET)
			public ModelAndView helpList
			(@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "10") int pageSize) throws Exception {

			ModelAndView mav = new ModelAndView();

			int totalCount = service.boardTotalCount();


			int totalPages = (int) Math.ceil((double) totalCount / pageSize);

			int startIndex
			= (page - 1) * pageSize;
			int endIndex
			= pageSize;


			List<help_boardDTO> helpList = service.helpList(startIndex, endIndex);

			System.out.println("helpList:"+helpList);

			mav.addObject("helpList", helpList);

			mav.addObject("currentPage", page);
			mav.addObject("totalPages", totalPages);
			mav.setViewName("helpList");


			return mav;
			}

			//검색 기능
			@PostMapping("board/helpSearch")

			public String helpSearch(@RequestBody Map<String, String> searchData,
			Model model) {
			try {
			String searchField = searchData.get("searchField");
			String searchKeyword = searchData.get("searchKeyword");

			List<help_boardDTO> searchResults = service.helpSearch(searchField, searchKeyword);

			model.addAttribute("searchResults", searchResults);

			// Return the new view (boardSearchResults.jsp) to display the search results
			return "helpSearchResults";
			} catch (Exception e) {
			e.printStackTrace();
			// You can handle the error and return an appropriate response or error page
			return "errorPage"; // Replace "errorPage" with the actual error page view name
			}
			}

			// 게시물 클릭
			@RequestMapping(value = "board/helpDetail",
			method = RequestMethod.GET)
			public ModelAndView helpDetail(@RequestParam("hno") int hno)
			throws Exception {
			ModelAndView mav = new ModelAndView();
			int r = service.helpviewCntUp(hno);

			List<help_boardDTO> helpDetail = service.helpDetail(hno);


			mav.addObject("helpDetail", helpDetail);
			mav.setViewName("helpDetail");



			System.out.println("helpDetail" +helpDetail);
			return mav;
			}

			// 글쓰기 클릭
			@RequestMapping(value = "board/helpRegister",
			method = RequestMethod.GET)
			public ModelAndView helpRegister(@RequestParam("membernum") int membernum)
			throws Exception {
			ModelAndView mav = new ModelAndView();


			List<memberDTO> helpRegister = service.helpRegister(membernum);


			mav.addObject("helpRegister", helpRegister);
			mav.setViewName("helpRegister");



			System.out.println("helpRegister" + helpRegister);
			return mav;
			}

			//게시물 삭제
			@RequestMapping(value="board/helpDelete", method = RequestMethod.GET)

			public String helpDelete(@RequestParam("hno")int hno) throws Exception{
			int helpDelete = service.helpDelete(hno);
			return "redirect:helpList";
			}

			//문의 게시물 추가
			@RequestMapping(value="board/helpInsert", method = RequestMethod.POST)

			public String helpInsert(HttpSession session, HttpServletRequest request, help_boardDTO help_boardDTO) throws Exception{
			Map user = (Map)session.getAttribute("user");
			int membernum = (int) user.get("membernum");
			System.out.println("세션에 저장되어 있는 변수: " + membernum);

			int helpInsert = service.helpInsert(membernum,help_boardDTO);
			return "redirect:helpList";

			}

			// 게시물 수정 클릭
			@RequestMapping(value = "board/helpUpdateView",
			method = RequestMethod.GET)
			public ModelAndView helpUpdateView(@RequestParam("hno") int hno)
			throws Exception {
			ModelAndView mav = new ModelAndView();

			List<help_boardDTO> helpUpdateView = service.helpUpdateView(hno);


			mav.addObject("helpUpdateView", helpUpdateView);
			mav.setViewName("helpUpdateView");


			return mav;
			}

			//게시물 수정
			@RequestMapping(value="board/helpUpdate", method = RequestMethod.POST)

			public String helpUpdate(help_boardDTO help_boardDTO)
			throws Exception{
			int helpUpdate = service.helpUpdate(help_boardDTO);
			int hno = help_boardDTO.getHno();

			return "redirect:helpDetail?hno="+hno;

			}

			// 카테고리 - 테이블 샘플 이동
			// 게시물 클릭

			@RequestMapping(value = "board/helpPw", method = RequestMethod.GET)

			public ModelAndView helpPw(@RequestParam("hno") int hno)
			throws Exception {

			ModelAndView mav = new ModelAndView();

			List<help_boardDTO> helpPw = service.helpDetail(hno);


			mav.addObject("helpPw", helpPw);
			mav.setViewName("helpPw");



			System.out.println("helpPw" +helpPw);
			return mav;
			}
			
			
			//----------------------------------------itemdetail 관련-----------------------------------------------------
			
			// 상품 상세조회 페이지
			@RequestMapping(value = "board/itemdetail", method = { RequestMethod.GET, RequestMethod.POST }, produces = "text/html; charset=UTF-8")
			public ModelAndView itemdetail(@RequestParam(name = "itemnum", required = false, defaultValue = "1") Integer itemnum,
									       @RequestParam(defaultValue = "1") int page,
									       @RequestParam(defaultValue = "4") int pageSize,
									       @RequestParam(defaultValue = "default") String sortBy,
									       @RequestParam(value="keyword",required = false,defaultValue = "") String keyword, HttpSession session) throws Exception {
			    ModelAndView mav = new ModelAndView();
			    
			    // 상품 정보 가져오기
			    itemDTO itemDTO = service.itemdetail(itemnum);
			    mav.addObject("itemDTO", itemDTO);

			    Map user = (Map)session.getAttribute("user");
			    
			    // 관심 여부 확인
			    if (user == null || user.isEmpty()) {
			        // 예외 상황에 대한 처리 로직
			    	mav.addObject("isInterested", false);
			    } else {
			    	Integer membernum = (Integer) user.get("membernum");
				    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				    Integer authority = (Integer)user.get("authority");
				    System.out.println("세션에 저장되어 있는 변수: " + authority);
				    
				    mylistDTO mylistDTO = new mylistDTO();
				    mylistDTO.setMembernum(membernum);
				    mylistDTO.setItemnum(itemDTO.itemnum);
				    boolean isInterested = service.isAlreadyInterested(mylistDTO);
				    mav.addObject("isInterested", isInterested);
				    mav.addObject("authority", authority);
			    }

			    // 리뷰 총 개수
			    int totalCount = service.getTotalCountRev(itemnum, keyword);
			    int totalPages = (int) Math.ceil((double) totalCount / pageSize);
			    int startIdx = (page - 1) * pageSize;

			    // 리뷰 목록 가져오기 (페이징 및 검색)
			    List<reviewDTO> review = service.getListByRangeRev(itemnum, startIdx, pageSize, keyword, sortBy);

			    mav.addObject("review", review);
			    mav.addObject("currentPage", page);
			    mav.addObject("totalPages", totalPages);
			    mav.addObject("keyword", keyword);
			    mav.addObject("sortBy", sortBy);
			    mav.addObject("searchResultCount", totalCount);

			    // 옵션 색상
			    List<iv_itemDTO> iv_itemcolor = service.iv_itemcolor(itemnum);
			    List<Integer> itemColors = new ArrayList<>();
			    for (iv_itemDTO iv_item : iv_itemcolor) {
			        int color = iv_item.getItemcolor();
			        itemColors.add(color);
			    }
			    List<iv_itemDTO> itemcolorstring = service.iv_itemcolor(itemnum);
			    List<String> itemcolorstrings = new ArrayList<>();
			    for (iv_itemDTO iv_item : itemcolorstring) {
			        String colorstr = String.valueOf(iv_item.getColorstring());
			        itemcolorstrings.add(colorstr);
			    }

			    mav.addObject("iv_itemcolor", itemColors);
			    mav.addObject("iv_itemcolorstring", itemcolorstrings);

			    // 평균 평점 (소수점 첫째 자리까지)
			    double avgRstar = service.rstarAvg(itemnum);
			    DecimalFormat decimalFormat = new DecimalFormat("0.0");
			    String formattedAvgRstar = decimalFormat.format(avgRstar);

			    // 값의 타입 확인 및 변환
			    if (formattedAvgRstar != null && !formattedAvgRstar.isEmpty()) {
			        double avgRstarDouble = Double.parseDouble(formattedAvgRstar);
			        mav.addObject("avgRstar", avgRstarDouble);
			    }
			    
			    // img
			    imgDTO imgDTO = service.imgdetail(itemnum);
			    mav.addObject("img", imgDTO);
			    
			    
			    mav.setViewName("itemdetail");

			    return mav;
			}

			
			// 컬러에 해당하는 사이즈 띄우기
			@ResponseBody
			@RequestMapping(value = "board/itemSizes", method = RequestMethod.GET, produces = "application/json")
			public List<iv_itemDTO> itemSizes(@RequestParam("itemnum") int itemnum, 
											  @RequestParam("itemcolor") int itemcolor) throws Exception {
			    List<iv_itemDTO> itemSizes = service.iv_itemsize(itemnum, itemcolor);
			    return itemSizes;
			}
			
			// 재고 파악
			@ResponseBody
			@RequestMapping(value = "board/iv_itemcntcheck", method = RequestMethod.GET, produces = "application/json")
			public List<iv_itemDTO> iv_itemcntcheck(@RequestParam("itemnum") int itemnum,
			                                        @RequestParam("itemcolor") int itemcolor,
			                                        @RequestParam("itemsize") int itemsize) throws Exception {
			    List<iv_itemDTO> ivItemCntList = service.iv_itemcntcheck(itemnum, itemcolor, itemsize);
			    return ivItemCntList;
			}
			
			// 바로구매 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/orderadd", method = RequestMethod.POST)
			public int orderadd(cartDTO cartDTO) throws Exception{
				return service.orderadd(cartDTO);
			}
			
			// 장바구니 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/cartadd", method = RequestMethod.POST)
			public int cartadd(cartDTO cartDTO) throws Exception{
				return service.cartadd(cartDTO);
			}
				
			// 찜 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/interest", method = RequestMethod.POST)
			public void interest(mylistDTO mylistDTO) throws Exception{
				if (!service.isAlreadyInterested(mylistDTO)) {
					service.interest(mylistDTO);
				}
			}
			
			// 찜해제 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/uninterest", method = RequestMethod.POST)
			public void uninterest(mylistDTO mylistDTO) throws Exception{
				service.uninterest(mylistDTO);
			}

			// 장바구니이동창
			@GetMapping(value="board/cartView1")
			public String cartView1() {
				return "cartView1";
			}
			
			// 리뷰신고창
			@GetMapping(value="board/drriviewForm")
			public String drriviewForm() {
				return "drriviewForm";
			}
			
			// 장바구니 옵션 중복 파악
			@ResponseBody
			@RequestMapping(value = "board/cartoptioncheck", method = RequestMethod.GET, produces = "application/json")
			public List<cartDTO> cartoptioncheck(@RequestParam("itemnum") int itemnum,
			                                     @RequestParam("iv_itemnum") int iv_itemnum, HttpSession session) throws Exception {
			    Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");

			    List<cartDTO> cartoptioncheck = service.cartoptioncheck(membernum, itemnum, iv_itemnum);
			    return cartoptioncheck;
			}
			
			// 리뷰 도움돼요 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/reviewlike", method=RequestMethod.POST)
			public String reviewlike(@RequestParam("reviewno") int reviewno, HttpSession session) {
				Map user    = (Map)session.getAttribute("user");
				Integer membernum = (Integer) user.get("membernum");
			    
			    boolean reviewExists = service.reviewcheck(reviewno, membernum);

			    if (reviewExists) {
			        return "alreadyLiked";
			    } else {
			        reviewDTO reviewDTO = new reviewDTO();
			        reviewDTO.setReviewno(reviewno);
			        reviewDTO.setMembernum(membernum);
			        service.reviewlike(reviewDTO);
			        return "success";
			    }
			}

			// 리뷰신고 버튼 클릭
			@ResponseBody
			@RequestMapping(value="board/drreviewpost", method= RequestMethod.POST)
			public int drreviewpost(dr_reviewDTO dr_reviewDTO) {
				return service.drreviewpost(dr_reviewDTO);
			}
			
			@ResponseBody
			@RequestMapping(value="board/reviewreport", method= RequestMethod.POST)
			public int reviewreport(reviewDTO reviewDTO) {
				return service.reviewreport(reviewDTO);
			}
			
			//----------------------------------------

			//주문목록
		    //리스트, 페이징, 검색---------------------------------------------------------------------------------
		    //주문목록으로 관리로 이동
		                   
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
					
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
					Page page = new Page();
					
					page.setNum(num);
					page.setCount(service.mynoreviewcount(membernum));
					
				
					List<reviewDTO> noreviewlist = null; 
							noreviewlist = service.noreviewlist(membernum,page.getDisplayPost(), page.getPostNum());
					
					model.addAttribute("noreviewlist", noreviewlist);
					model.addAttribute("page", page);
					
					//현재페이지
					model.addAttribute("select", num);
					
				return "myreview";
				}
			//작성한리뷰
			@RequestMapping( value="board/myreviewlist", method = RequestMethod.GET)
				public String myreviewlist(Model model,@RequestParam("num")int num) throws Exception{
				
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
			    
					Page page = new Page();
					
					page.setNum(num);
					page.setCount(service.myreviewcount(membernum));
				
					List<reviewDTO> reviewlist = null;
					
					reviewlist = service.reviewlist(membernum,page.getDisplayPost(), page.getPostNum());
					
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
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
				service.reviewinsert(membernum,reviewDTO);
				
				service.reviewset(membernum,dv_orderDTO);
				
				return "redirect:myreviewlist?num=1";
			}
			//리뷰수정
			@RequestMapping( value="board/reviewupdate", method = RequestMethod.GET)
				public String reviewupdate(@RequestParam("reviewno") int reviewno,Model model) throws Exception{
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
					List<reviewDTO> reviewupdatedetail = service.reviewupdatedetail(membernum,reviewno);
					
					model.addAttribute("reviewdetail", reviewupdatedetail);
				
				return "reviewupdate";
				}
			@RequestMapping(value="board/reviewupdate",method=RequestMethod.POST)
				public String reviewupdate(reviewDTO reviewupdate) throws Exception{
				
				service.reviewupdate(reviewupdate);
				
				return "redirect:myreviewlist?num=1";
			}
			//리뷰상세
			@RequestMapping( value="board/reviewdetail", method = RequestMethod.GET)
				public String reviewdetail(@RequestParam("reviewno") int reviewno,Model model) throws Exception{
				
				Map user    = (Map)session.getAttribute("user");
			    int membernum = (int) user.get("membernum");
			    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
				List<reviewDTO> reviewdetail = service.reviewdetail(reviewno);
				
				model.addAttribute("reviewdetail", reviewdetail);
				
				return "reviewdetail";
				}
			//내문의내역
			@RequestMapping( value="board/myhelplist", method = RequestMethod.GET)
				public String myhelplist(Model model,@RequestParam("num")int num) throws Exception{
					Map user    = (Map)session.getAttribute("user");
				    int membernum = (int) user.get("membernum");
				    System.out.println("세션에 저장되어 있는 변수: " + membernum);
				
					Page page = new Page();
					
					page.setNum(num);
					page.setCount(service.myhelpcount(membernum));
				
					
					List<help_boardDTO> helplist = null; 
					helplist= service.myhelplist(membernum,page.getDisplayPost(), page.getPostNum());
							
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
				return "redirect:myreviewlist?num=1";
				}
			//1:1문의하기폼
			@RequestMapping( value="board/helpboard", method = RequestMethod.GET)
				public String helpboard() throws Exception{
				
				return "helpboard";
				}

			//문의내역상세
			@RequestMapping( value="board/myhelpdetail", method = RequestMethod.GET)
				public String myhelpdetail(@RequestParam("hno") int hno ,Model model) throws Exception{
				
					help_boardDTO helpdetail = service.myhelpdetail(hno);
					
					model.addAttribute("helpdetail", helpdetail);
				
				
				return "myhelpdetail";
				}
			//문의내역수정폼
			@RequestMapping( value="board/myhelpupdate", method = RequestMethod.GET)
				public String myhelpupdate(@RequestParam("hno") int hno ,Model model) throws Exception{
					
					help_boardDTO helpdetail = service.myhelpdetail(hno);
				
					model.addAttribute("helpupdate", helpdetail);
				
				return "myhelpupdate";
				}
			//문의수정하기
			@RequestMapping(value="board/myhelpupdate", method = RequestMethod.POST)
				public String myhelpupdate(help_boardDTO helpboard) throws Exception{
				
				service.myhelpupdate(helpboard);
					
				return "redirect:myhelplist";
			}
			//문의취소하기
			@ResponseBody
			@RequestMapping(value="board/myhelpcancel", method = RequestMethod.POST)
			public int myhelpcancel(@RequestParam("hno") int hno) throws Exception{
			
				return service.myhelpcancel(hno);
			}
			//장바구니담기버튼
			@RequestMapping(value="board/orderlistcartinsert",method=RequestMethod.GET)
			public String orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception{
			
			service.orderlistcartinsert(orderlistcartinsert);
			
			return "redirect:myorderlist";
		}
			
}
