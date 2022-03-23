package yolo.mypage.info.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.mypage.info.serive.InfoService;
import yolo.user.dto.UserVO;

@Controller
public class InfoController {
	
	@Autowired
	InfoService service;
	
	/*
	* @메소드명: myinfoview
	* @역할: 마이페이지-개인정보 수정 페이지 전환
	*
	* @param   UserVO
	* @return  ModelAndView:반환하는 경로 
	*/
	@RequestMapping("mypage/info/MyPageView.myinfo")
	public ModelAndView myinfoview(UserVO vo, HttpSession session){
        ModelAndView mv = new ModelAndView();
		String u_id = (String)session.getAttribute("u_id");
		vo.setU_id(u_id);
		UserVO info = service.myinfoview(vo);
		mv.addObject("info", info);
		mv.setViewName("/mypage/info/MyPageView");
		return mv;
	}
	
	/*
	* @메소드명: myinfomodify
	* @역할: 마이페이지-개인정보 수정 페이지 전환
	* 
	* @param   UserVO
	* @return  ModelAndView:반환하는 경로 
	*/
	@RequestMapping("mypage/info/MyInfoModify.myinfo")
	public ModelAndView myinfomodify(UserVO vo, HttpSession session){
        ModelAndView mv = new ModelAndView();
		UserVO myinfo = service.myinfoview(vo);
		System.out.println(myinfo.getU_iname());
		mv.addObject("myinfo", myinfo);
		mv.setViewName("/mypage/info/MyInfoModify");
		return mv;
	}
	
	/*
	* @메소드명: myinfomodify
	* @역할: 수정 후 다시 정보 보기 페이지 
	*
	* @param   UserVO
	* @return  ModelAndView:반환하는 경로 
	*/
	@RequestMapping("mypage/info/ModifyFinish.myinfo")
	public ModelAndView modifyfinish(UserVO vo, String postcode, String main_address , String detail_address){
        ModelAndView mv = new ModelAndView();
        System.out.println(vo.getU_id() + vo.getU_pass() + vo.getU_iname());
        vo.setU_addr(postcode+"/" + main_address + "/" + detail_address);
		int result = service.myinfomodify(vo);
		System.out.println(result);
		mv.setViewName("redirect:/mypage/info/MyPageView.myinfo");
		return mv;
	}
	
}
