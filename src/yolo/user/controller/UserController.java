package yolo.user.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yolo.host.dto.HostinfoVO;
import yolo.user.dto.UserVO;
import yolo.user.service.UserService;

/*
* @클래스명: UserController
*
* @version     1.0 17/06/27
* @author      이윤정
* @see         yolo.user.controller
* @since       JDK1.8
*/
@Controller
public class UserController {
	
	/* 멤버필드 */
	@Autowired
	UserService service;
	
	/*
	* @메소드명: joinUser
	* @역할: views/join/join_ok로 페이지 전환
	*
	* @param   UserVO
	* @return  ModelAndView:반환하는 경로 
	*/
	@RequestMapping("join/join_ok.main")
	public ModelAndView joinUser(UserVO userVO, String postcode,String main_address , String detail_address){
		userVO.setU_addr(postcode+"/" + main_address + "/" + detail_address);
		ModelAndView mv = new ModelAndView();
		
		Float[] coords = new Float[2];
		int result = service.joinUser(userVO);

	
		String message ="가입실패";
		
		if(result>0){
			message = "가입성공";
		}
		mv.addObject(result);
		mv.addObject(message);
		mv.setViewName("/common/main.main");

		return mv;
	}
	
	/*
	* @메소드명: idcheck
	* @역할: 입력된 id값이 중복인지 아닌지 판단
	*
	* @param   UserVO
	* @return  String:반환하는 경로 
	*/
	@RequestMapping("join/idCheck.main")
	@ResponseBody
	public String idcheck(UserVO userVO){
		System.out.println(userVO.getU_id());
		String result = "ID 사용가능";
		UserVO reVO = service.idCheck(userVO);
		if(reVO != null){
			result = " 이미사용중 ";
		}
		return result;
	}

	/*
	* @메소드명: login
	* @역할: 입력된 login 판단 처리 메소드
	*
	* @param   UserVO:사용자 정보 저장vo, HttpSession:세션 이용, HttpServletRequest
	* @return  String:반환하는 경로 
	*/
	@RequestMapping(value="login/login.main" , produces="text/plain; charset=UTF-8")
	public String login(UserVO userVO, HttpSession session, HttpServletRequest request, HttpServletResponse response){
		//이전페이지 주소값을 가져옴
		String referrer = request.getHeader("Referer");
				
		UserVO reVO = service.loginUser(userVO);
		HostinfoVO hostvo = service.hostselect(reVO);
		if(hostvo != null){
			session.setAttribute("h_num",hostvo.getH_num());
		}
		if(reVO != null){
			session.setAttribute("u_id",reVO.getU_id());
			
			System.out.println("로그인 완료");
		}else{
			System.out.println("로그인 실패");
		}
		return "redirect:"+referrer;
	}

	/*
	* @메소드명: logout
	* @역할: 입력된 logout 처리 메소드
	*
	* @param   HttpSession:세션 이용
	* @return  String:반환하는 경로 
	*/
	@RequestMapping("logout/logout.main")
	public String logout(HttpSession session){
		//세션 저장된 로그인 id 삭제
		session.invalidate();
		//메인페이지로 이동
		return "redirect:/index.jsp";
	}
}
