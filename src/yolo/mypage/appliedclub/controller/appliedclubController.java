package yolo.mypage.appliedclub.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.servlet.ModelAndView;

import yolo.club.dto.ClubListVO;
import yolo.mypage.appliedclub.dto.SignclubVO;
import yolo.mypage.appliedclub.dto.appliedclubVO;
import yolo.mypage.appliedclub.service.appliedclubService;

@Controller
@RequestMapping("mypage/appStatus")
public class appliedclubController {
	
	@Autowired
	appliedclubService service;
	
//	@RequestMapping("/appliedClub.myinfo")
//	public String appClub(){
//		
//		return "/mypage/appStatus/appliedClub";
//	}
	
	/*
	* @메소드명: signclublist
	* @역할: views/mypage/appStatus/appliedClub로 페이지 전환
	*
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/appliedClub.myinfo")
	public ModelAndView signclublist(SignclubVO signclubVO, HttpSession session){
		
		String user = (String)session.getAttribute("u_id");
//		System.out.println("user:"+user);
		ModelAndView mv = new ModelAndView();
		List<SignclubVO> clublist = service.signclublist(user);
		mv.addObject("clublist", clublist);
		mv.setViewName("/mypage/appStatus/appliedClub/modal_cancel.modal");
//		System.out.println(clublist.size());
		return mv;
	}
	
	/*
	* @메소드명: applyClubOk
	* @역할: appliedclubService를 호출하여 웹에서 가져온 c_num을 통해 등록값을 전달 
	*
	* @param   appliedclubVO:jsp a tag를 통해 가져온 c_num 값
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/applyClubOk.myinfo")
	public String signclubinput(appliedclubVO appclubVO, HttpSession session){
		appclubVO.setU_id((String)session.getAttribute("u_id"));
//		System.out.println("id:"+appclubVO.getU_id());
//		
//		System.out.println("c_num1:"+appclubVO.getC_num());
		
		int result = service.signclubinput(appclubVO);
		if(result > 0){
			System.out.println("DB입력 성공");
		}else{
			System.out.println("DB입력 실패");
		}
		return "redirect:/mypage/appStatus/appliedClub.myinfo";
	}
		
	/*
	* @메소드명: deleteOk
	* @역할: signclubVO를 호출하여 웹에서 가져온 sc_num을 통해 등록값을 전달 
	*
	* @param   appliedclubVO:jsp a tag를 통해 가져온 sc_num 값
	* @return  String:반환하는 경로
	*/	
	@RequestMapping("/delete_ok.myinfo")
	public ModelAndView deleteOk(SignclubVO signclubVO, HttpSession session){
		String user = (String)session.getAttribute("u_id");
		signclubVO.setU_id(user);
		System.out.println("ID:"+signclubVO.getU_id());
		System.out.println("SC:"+signclubVO.getSc_num());
//		System.out.println("SC2:"+sc_num);
//		System.out.println("C:"+signclubVO.getC_num());
		ModelAndView mv = new ModelAndView();
		int result =0;
		String message = "삭제 실패";
		String state = "no";
		result = service.signclubdelete(signclubVO);
		if(result != 0){
			state = "yes";
			message = "삭제 성공";
		}
		mv.addObject("message", message);
		mv.addObject("state", state);
		mv.setViewName("mypage/appStatus/delete_ok");
		return mv;
	}
	


}
 