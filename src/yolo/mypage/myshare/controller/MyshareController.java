package yolo.mypage.myshare.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.mypage.myshare.service.MyshareService;
import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.ShareVO;

/*
 * @클래스명: MyshareController
 * @version 	1.0 17/07/05
 * @author		김명희
 * @see			yolo.mypage.myshare.controller
 * @since		JDK1.8
 */
@Controller
@RequestMapping("mypage/myReg")
public class MyshareController {
	
	/* 멤버필드 */
	@Autowired
	MyshareService service;
	
	/*
	* @메소드명: mysharelist
	* @역할: views/mypage/myReg/ShareMyList로 페이지 전환
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/ShareMyList.myreg")
	public ModelAndView mysharelist(HttpSession session){
		String uid = (String)session.getAttribute("u_id");
		List<ShareMainListVO> list = service.myshareList(uid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/mypage/myReg/ShareMyList/modal_myshare_delete.modal");
		System.out.println("controller"+list.size());
		return mv;
		
	}
	
	/*
	* @메소드명: sdetail
	* @역할: views/mypage/myReg/S_Detail로 페이지 전환
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/S_Detail.myreg")
	public ModelAndView sdetail(ShareMainListVO sharemainlistVO){
		ModelAndView mv = new ModelAndView();
		ShareMainListVO list = service.sdetail(sharemainlistVO);
		System.out.println(sharemainlistVO.getSl_num());
		mv.addObject("list", list);
		mv.setViewName("/mypage/myReg/S_Detail");
		return mv;
	}

	/*
	 * @메소드명: myShareEdit
	 * @역활 : myshareEdit페이지 이동
	 * @param 없음
	 * @return	ModelAndView:반환하는 경로
	 */
	@RequestMapping("/myShareEdit.myreg")
	public ModelAndView myshareEdit(ShareVO vo ){
		
		
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getSl_num());
		List<ShareMainListVO> list = service.myshareEdit(vo);
		System.out.println("반환되는 리스트 값 사이즈"+list.size());
		mv.addObject("list", list);
		mv.setViewName("/mypage/myReg/myShareEdit");
		return mv;
	}
	
	/*
	 * @메소드명: myShareEditOK
	 * @역활 : myshareList페이지 이동
	 * @param 없음
	 * @return	String:반환하는 경로
	 */
	@RequestMapping("/myShareEditOK.myreg")
	public String myshareEditOK(){
		return "/Yolo/comshare/ShareList";
	}
	
	/*
	 * @메소드명: myshareDelete
	 * @역활 : ShareMyList에서 삭제 후 ShareMyList로 이동
	 * @param 없음
	 * @return	ModelAndView:반환하는 경로
	 */
	@RequestMapping("/myShareDelete.myreg")
	public ModelAndView myshareDelete(ShareMainListVO sharemainlistVO){
		ModelAndView mv = new ModelAndView();
		System.out.println(sharemainlistVO.getSl_num());
		service.myshareDelete(sharemainlistVO);
		mv.setViewName("redirect:/mypage/myReg/ShareMyList.myreg");
		return mv;
	}
	
}
