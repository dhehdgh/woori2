package kr.co.dong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController{
	
	
	@RequestMapping (value="board/mypageList",method = RequestMethod.GET)
		public String mypageList()throws Exception{
			return "mypageList";
		}
	
	
}