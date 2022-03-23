package yolo.mypage.appliedlot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.mypage.appliedlot.dto.BookedlotVO;
import yolo.mypage.appliedlot.service.appliedLotService;

/*
* @클래스명: appliedlotController
*
* @version     1.0 17/06/28
* @author      차인혁
* @see         yolo.mypage.appliedlot.controller
* @since       JDK1.8
*/

@Controller
@RequestMapping("mypage/appStatus")
public class appliedLotController {
	
	@Autowired
	appliedLotService service;
	
	/*
	* @메소드명: booklotlist
	* @역할: views/mypage/appStatus/appliedLot로 페이지 전환
	*
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	
	@RequestMapping("/appliedLot.myinfo")
	public ModelAndView booklotlist(BookedlotVO bookedlotVO, HttpSession session){
		
		String user = (String)session.getAttribute("u_id");
		System.out.println("user2:"+user);
		ModelAndView mv = new ModelAndView();
		List<BookedlotVO> lotlist = service.booklotlist(user);
		mv.addObject("lotlist", lotlist);
		mv.setViewName("/mypage/appStatus/appliedLot");
		System.out.println(lotlist.size());
		
		return mv;
	}

}
