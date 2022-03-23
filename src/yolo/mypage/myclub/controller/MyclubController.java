package yolo.mypage.myclub.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.club.dto.ClubListVO;
import yolo.mypage.myclub.service.MyclubService;

/*
 * @클래스명: MyclubController
 * @version 	1.0 17/07/05
 * @author		김명희
 * @see			yolo.mypage.myclub.controller
 * @since		JDK1.8
 */
@Controller
@RequestMapping("mypage/myReg")
public class MyclubController {

	/* 멤버필드 */
	@Autowired
	MyclubService service;
	
	/*
	* @메소드명: myclublist
	* @역할: views/mypage/myReg/ClubMyList로 페이지 전환
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/ClubMyList.myreg")
	public ModelAndView myclublist(HttpSession session){
		String uid = (String)session.getAttribute("u_id");
		List<ClubListVO> list = service.myclubList(uid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/mypage/myReg/ClubMyList/modal_myclub_delete.modal");
		System.out.println("controller"+list.size());
		return mv;
	}
	
	/*
	* @메소드명: cDetail
	* @역할: views/mypage/myReg/C_Detail로 페이지 전환
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/C_Detail.myreg")
	public ModelAndView cdetail(ClubListVO clublistVO){
		ModelAndView mv = new ModelAndView();
		ClubListVO list = service.cdetail(clublistVO);
		System.out.println(clublistVO.getC_num());
		mv.addObject("list",list);
		mv.setViewName("/mypage/myReg/C_Detail");
		return mv;
	}
	
	/*
	 * @메소드명: clubEdit
	 * @역활 : ClubEdit페이지 이동
	 * @param 없음
	 * @return String:반환하는 경로
	 */
	@RequestMapping("/myClubEdit.myreg")
	public String clubEdit(){
		
		return "/mypage/myReg/myClubEdit";
	}
	
	@RequestMapping("/myClubDelete.myreg")
	public ModelAndView myclubDelete(ClubListVO clublistVO){
		ModelAndView mv = new ModelAndView();
		service.myclubDelete(clublistVO);
		mv.setViewName("redirect:/mypage/myReg/ClubMyList.myreg");
		return mv;
	}
}
