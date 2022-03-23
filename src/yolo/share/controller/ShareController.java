package yolo.share.controller;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.share.dto.BookShareVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.SharePagingVO;
import yolo.share.dto.ShareVO;
import yolo.share.service.ShareService;

/*
 * @클래스명: ShareController
 * 
 * @version 	1.0 17/06/27
 * @author		김찬종
 * @see			yolo.share.controller
 * @since		JDK1.8
 */
@Controller
@RequestMapping("comShare")
public class ShareController {
	/* 멤버필드 */
	@Autowired
	ShareService service;

	/*
	 * @메소드명: shareInput
	 * @역활 : 쉐어링 Input 페이지 보여주기
	 * @param 없음
	 * @return ModelAndView로 반환
	 */
	@RequestMapping("ShareInput.share")
	public ModelAndView shareInput(HttpSession session){
		//uid 회원아이디
		String uid = (String)session.getAttribute("u_id");
		List<InputListVO> list = service.inputList(uid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/comShare/ShareInput");
		System.out.println("controller"+list.size());
		return mv;
	}
	
	/*
	 * @메소드명: shareEdit
	 * @역활 : 쉐어링 Edit 페이지 보여주기
	 * @param shareVO vo(sl_num) 
	 * @return ModelAndView로 반환
	 */
	@RequestMapping("ShareEdit.share")
	public ModelAndView shareEdit(ShareVO vo){
		List<ShareMainListVO> list = service.shareEdit(vo);
		System.out.println("shareEdit controller list크기"+list.size());
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/comShare/ShareEdit");
		return mv;
	}
	
	/*
	 * @메소드명: shareList
	 * @역활 : 쉐어링 List 페이지 보여주기
	 * @param 없음
	 * @return ModelAndView로 반환
	 */
	@RequestMapping("ShareList.share")
	public ModelAndView shareList(SharePagingVO pvo){
		
		int shareTotalCount = service.shareTotalGetCount(); //총 게시물 수 구하기
		System.out.println("위치 controller : db에 있는 sharelot 총 게시물 수"+shareTotalCount);
		int shareCountList = 5; // 한 페이지 출력될 게시물 수
		int shareCountPage = 5; // 한 화면에 출력될 페이지 수
		int shareTotalPage = shareTotalCount / shareCountList; // 총 페이지 수
		if(shareTotalCount % shareCountList > 0){
			shareTotalPage++;
		} 
		
		int shareNowPage = pvo.getShareNowPage(); //보여줄 페이지 가져오기
		System.out.println("pvo.getShareNowPage() 값"+shareNowPage);
		
		if (shareNowPage < 1) {
			shareNowPage = 1;
		} // 보여줄 페이지 요청이 1페이지보다 작을때 1페이지로 변환
		
		if (shareTotalPage < shareNowPage) {
			shareNowPage = shareTotalPage;
		} //보여줄 페이지 요청이 총 페이지 보다 클때  총 페이지로 변환
		
		int startPage = ((shareNowPage - 1) / shareCountPage) * shareCountPage + 1; //화면에 보여줄 시작 페이지수
		int endPage = startPage + shareCountPage - 1; //화면에 보여줄 끝 페이지 수
		
		if (endPage > shareTotalPage) {
		    endPage = shareTotalPage;
		}// 마지막에 보여줄 페이지 수가 총 페이지 수 보다 클때
		
		int startCount = ((shareNowPage - 1) * shareCountList) + 1; //페이지에 보여줄 첫번째 게시물 

		int endCount = shareNowPage * shareCountList;   // 페이지에 보여줄 마지막 게시물
		System.out.println("위치: controller = startCount:"+startCount);
		System.out.println("위치: controller = endCount:"+endCount);
//		SharePagingVO vo = new SharePagingVO();
		pvo.setStartCount(startCount);
		pvo.setEndCount(endCount);
		
		System.out.println(pvo.getEndCount());
		System.out.println(pvo.getStartCount());
		
		List<ShareMainListVO> list = service.shareList(pvo);
		List<ShareMainListVO> slist = service.shareAllList();
		String smlist = sharejson(slist);
		
		System.out.println("위치: controller: list의크기:"+list.size());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("startPage",startPage);
		mv.addObject("smlist", smlist);
		mv.addObject("endPage",endPage);
		mv.addObject("shareNowPage", shareNowPage);
		mv.addObject("list", list);
		mv.setViewName("/comShare/ShareList");
		
		return mv;
	}
	
	public String sharejson(List<ShareMainListVO> list){
	       //최종 완성될 JSONObject 선언(전체)
	           JSONObject jsonObject = new JSONObject();
	           //props의 JSON정보를 담을 Array 선언
	           JSONArray propsArray = new JSONArray();
	           
	           for(ShareMainListVO lotVO: list){
	              //props의 한명 정보가 들어갈 JSONObject 선언
	              JSONObject propsInfo = new JSONObject();
	              //위도 경도의 한명 정보
	              JSONObject positionInfo = new JSONObject();
	              propsInfo.put("number", lotVO.getPri_num());
	              propsInfo.put("title", lotVO.getPri_title());
	              propsInfo.put("image", lotVO.getPriimg_name());
	               propsInfo.put("price", lotVO.getPri_weekprice());
	               propsInfo.put("address", lotVO.getPri_addr());
	               //위도 경도 추가
	               	positionInfo.put("lat", lotVO.getPri_lat());
	               	positionInfo.put("lng", lotVO.getPri_long());
	               propsInfo.put("position", positionInfo);   	
	               propsInfo.put("markerIcon", "marker-green.png");
	               propsArray.add(propsInfo);
	           }
	           jsonObject.put("props", propsArray);
	           
	           String jsonInfo = jsonObject.toJSONString();
	           
	           System.out.println(jsonInfo);
	           return jsonInfo;
	     }
	
	/*
	 * @메소드명: ShareBookLot
	 * @역활 : 쉐어링 신청하고 ShareList로 페이지 전환
	 * @param BookShareVO
	 * @return ModelAndView로 반환
	 */
	@RequestMapping("ShareBookLot.share")
	public ModelAndView ShareBookLot(BookShareVO vo, HttpSession session){
		System.out.println("ShareBookLot 컨트롤러 실행");
		vo.setU_id((String)session.getAttribute("u_id"));
		int result = service.ShareBookLot(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/comShare/ShareList.share");
		System.out.println("ShareBookLot 컨트룰러 끝" + result);
		return mv;
	}
	/*
	 * @메소드명: shareInput
	 * @역활 : 쉐어링 글등록하고 ShareList로 페이지 전환
	 * @param 없음
	 * @return ModelAndView로 반환
	 */
	@RequestMapping("ShareInputOk.share")
	public ModelAndView shareInputOk(ShareVO vo, SharePagingVO pvo, HttpSession session){
		vo.setU_id((String)session.getAttribute("u_id"));
		// 초기값 주기
		String defaulttime[] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"};
		//설정해야 할 값 가져오기
		String settime = vo.getSl_time();
		System.out.println("변경되기 전 선택 값들:"+settime);
		//값 설정하기
		StringTokenizer st = new StringTokenizer(settime,"/");
		while(st.hasMoreTokens()){
			String time = st.nextToken();
			switch (time){
			   case "9:00" :
				   defaulttime[0] = "1";
				   break;
			   case "10:00" :
				   defaulttime[1] = "1";
				   break;
			   case "11:00" :
				   defaulttime[2] = "1";
				   break;
			   case "12:00" :
				   defaulttime[3] = "1";
				   break;
			   case "13:00" :
				   defaulttime[4] = "1";
				   break;
			   case "14:00" :
				   defaulttime[5] = "1";
				   break;
			   case "15:00" :
				   defaulttime[6] = "1";
				   break;
			   case "16:00" :
				   defaulttime[7] = "1";
				   break;
			   case "17:00" :
				   defaulttime[8] = "1";
				   break;
			   case "18:00" :
				   defaulttime[9] = "1";
				   break;
			   case "19:00" :
				   defaulttime[10] = "1";
				   break;
			   case "20:00" :
				   defaulttime[11] = "1";
				   break;
			   case "21:00" :
				   defaulttime[12] = "1";
				   break;
			   case "22:00" :
				   defaulttime[13] = "1";
				   break;
			   case "23:00" :
				   defaulttime[14] = "1";
				   break;
			   case "24:00" :
				   defaulttime[15] = "1";
				   break;	   
			   
			   }
		}
		// defaulttime 배열을 다시 settime에 설정
		settime = "";
		for(int i = 0; i<defaulttime.length; i++){
			if(i == defaulttime.length-1){
				settime += defaulttime[i];
			} else {
				settime += defaulttime[i]+"/";
			}
		}
		System.out.println("선택된 시간 변경된 값:"+settime);
		vo.setSl_time(settime);
		int result = service.shareInput(vo);
		String message = "입력실패";
		if(result > 0){
			message = "입력완료";
		}
		System.out.println(message);
		
		
		
		// ShareList.jsp 보여줄 때
		int shareTotalCount = service.shareTotalGetCount(); //총 게시물 수 구하기
		System.out.println("위치 controller : db에 있는 sharelot 총 게시물 수"+shareTotalCount);
		int shareCountList = 5; // 한 페이지 출력될 게시물 수
		int shareCountPage = 5; // 한 화면에 출력될 페이지 수
		int shareTotalPage = shareTotalCount / shareCountList; // 총 페이지 수
		if(shareTotalCount % shareCountList >0){
			shareTotalPage++;
		}
		
		
		int shareNowPage = pvo.getShareNowPage(); //보여줄 페이지 가져오기
		System.out.println("vo.getShareNowPage() 값"+shareNowPage);
		
		if (shareNowPage < 1) {
			shareNowPage = 1;
		} // 보여줄 페이지 요청이 1페이지보다 작을때 1페이지로 변환
		
		if (shareTotalPage < shareNowPage) {
			shareNowPage = shareTotalPage;
		} //보여줄 페이지 요청이 총 페이지 보다 클때  총 페이지로 변환

		int startPage = ((shareNowPage - 1) / shareCountPage) * shareCountPage + 1; //화면에 보여줄 시작 페이지수
		int endPage = startPage + shareCountPage - 1; //화면에 보여줄 끝 페이지 수
		
		if (endPage > shareTotalPage) {
		    endPage = shareTotalPage;
		}// 마지막에 보여줄 페이지 수가 총 페이지 수 보다 클때
			
		int startCount = (shareNowPage - 1) * shareCountList + 1; //페이지에 보여줄 첫번째 게시물 

		int endCount = shareNowPage * shareCountList;   // 페이지에 보여줄 마지막 게시물
		System.out.println("위치: controller = startCount:"+startCount);
		System.out.println("위치: controller = endCount:"+endCount);
//		SharePagingVO vo = new SharePagingVO();
		pvo.setStartCount(startCount);
		pvo.setEndCount(endCount);
	
		System.out.println(pvo.getEndCount());
		System.out.println(pvo.getStartCount());
		
		List<ShareMainListVO> list = service.shareList(pvo);
		
		System.out.println("위치: controller: list의크기:"+list.size());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("shareNowPage", shareNowPage);
		mv.addObject("list", list);
		mv.setViewName("/comShare/ShareList");
		
		return mv;
	}
	
	/*
	 * @메소드명: shareDetail
	 * @역활 : ShareDetail페이지 전환
	 * @param 없음
	 * @returnString:반환하는 경로
	 */
	@RequestMapping("/ShareDetail.share")
	public ModelAndView shareDetail(ShareVO vo){
		List<ShareMainListVO> list = service.shareDetail(vo);
		System.out.println("list 목록"+list);
		System.out.println("/sharedetail ,위치: controller: list의크기:"+list.size());
		ModelAndView mv = new ModelAndView();
		String smlist = sharejson(list);
		mv.addObject("smlist", smlist);
		mv.addObject("list", list);
		mv.setViewName("/comShare/ShareDetail/modal_share.modal");
		return mv;
	}

	
	/*
	 * @메소드명: shareView
	 * @역활 : url 따라서 페이지 전환
	 * @param 없음
	 * @return	String:반환하는 경로
	 */
	@RequestMapping("/{url}.share")
	public String shareView(@PathVariable String url){
		System.out.println(url+"path 페이지 이동중");
		return "/comShare/"+url;
	}
	

}
