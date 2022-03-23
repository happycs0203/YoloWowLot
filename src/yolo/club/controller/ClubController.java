package yolo.club.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yolo.club.dao.ClubDAO;
import yolo.club.dto.ClubImageVO;
import yolo.club.dto.ClubListVO;
import yolo.club.dto.ClubPagingVO;
import yolo.club.dto.ClubVO;
import yolo.club.service.ClubService;
import yolo.lot.dto.BookmarkVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.SharePagingVO;

/*
* @클래스명: ClubController
*
* @version     1.0 17/06/28
* @author      차인혁
* @see         yolo.club.controller
* @since       JDK1.8
*/

@Controller
@RequestMapping("club")
public class ClubController {
	
	/* 멤버필드 */
	@Autowired
	ClubService service;
	
	/*
	* @메소드명: clubList
	* @역할: views/club/clubList로 페이지 전환
	*
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
//	@RequestMapping("/ClubList.club")
//	public ModelAndView clubList(ClubListVO clublistVO){
//		ModelAndView mv = new ModelAndView();
//		List<ClubListVO> list = service.clublistview();
//		mv.addObject("list", list);
//		mv.setViewName("/club/ClubList");
//		System.out.println(list.size());
//		return mv;
//	}
	
	/*
	* @메소드명: clubList
	* @역할: views/club/clubList로 페이지 전환
	*
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/ClubList.club")
	public ModelAndView list(ClubPagingVO pageVO, String keyWord, String location){
		
		List<ClubListVO> clublist = new ArrayList<ClubListVO>();
//		int clubSearchPage;
//		int clubSearchCount;
		
//		int clubTotalPage;
//		int clubTotalCount;
		ModelAndView mv = new ModelAndView();
		
		int clubCountList = 12; // 한 페이지 출력될 게시물 수
		int clubCountPage = 5; // 한 화면에 출력될 페이지 수
		int clubNowPage = pageVO.getClubNowPage(); //보여줄 페이지 가져오기
		System.out.println("pageVO.getClubNowPage() 값"+clubNowPage);
		int startPage = 0;
		int endPage = 0;
		int startCount;
		int endCount;
		
		if(keyWord != null || location != null){
			/* 검색 리스트 */
			int clubSearchCount = service.clubSearchgetCount(keyWord, location);
			System.out.println("위치 controller : db에 있는 search 총 게시물 수"+clubSearchCount);
			int clubSearchPage = clubSearchCount / clubCountList; // 총 페이지 수
			if(clubSearchCount % clubCountList >0){
				clubSearchPage++;
			}
			
			if (clubNowPage < 1) {
				clubNowPage = 1;
			} // 보여줄 페이지 요청이 1페이지보다 작을때 1페이지로 변환
			
			if (clubSearchPage < clubNowPage) {
				clubNowPage = clubSearchPage;
			} //보여줄 페이지 요청이 총 페이지 보다 클때  총 페이지로 변환

			startPage = ((clubNowPage - 1) / clubCountPage) * clubCountPage + 1; //화면에 보여줄 시작 페이지수
			endPage = startPage + clubCountPage - 1; //화면에 보여줄 끝 페이지 수
			
			if (endPage > clubSearchPage) {
			    endPage = clubSearchPage;
			}// 마지막에 보여줄 페이지 수가 총 페이지 수 보다 클때
			
			startCount = ((clubNowPage - 1) * clubCountList) + 1; //페이지에 보여줄 첫번째 게시물 

			endCount = clubNowPage * clubCountList;   // 페이지에 보여줄 마지막 게시물
			
			System.out.println("위치: controller = startCount:"+startCount);
			System.out.println("위치: controller = endCount:"+endCount);
			
			pageVO.setStartCount(startCount);
			pageVO.setEndCount(endCount);
		
			System.out.println(pageVO.getEndCount());
			System.out.println(pageVO.getStartCount());
			
			if(keyWord != null){
				System.out.println("ㅋ워드 들어감");
				clublist = service.clubsearhKey(pageVO, keyWord);
				mv.addObject("returnKey", keyWord);
			}else if(location != null){
				System.out.println("위치 들어감");
				clublist = service.clubsearhLoc(pageVO, location);
				mv.addObject("returnLoc", location);
			}
	
		}else if(keyWord == null && location == null){
			/*전체 리스트 */
			int clubTotalCount = service.clubTotalgetCount(); //총 게시물 수 구하기
			System.out.println("위치 controller : db에 있는 club 총 게시물 수"+clubTotalCount);
			
			int clubTotalPage = clubTotalCount / clubCountList; // 총 페이지 수
			if(clubTotalCount % clubCountList >0){
				clubTotalPage++;
			}
			
			if (clubNowPage < 1) {
				clubNowPage = 1;
			} // 보여줄 페이지 요청이 1페이지보다 작을때 1페이지로 변환
			
			if (clubTotalPage < clubNowPage) {
				clubNowPage = clubTotalPage;
			} //보여줄 페이지 요청이 총 페이지 보다 클때  총 페이지로 변환

			startPage = ((clubNowPage - 1) / clubCountPage) * clubCountPage + 1; //화면에 보여줄 시작 페이지수
			endPage = startPage + clubCountPage - 1; //화면에 보여줄 끝 페이지 수
			
			if (endPage > clubTotalPage) {
			    endPage = clubTotalPage;
			}// 마지막에 보여줄 페이지 수가 총 페이지 수 보다 클때
			
			startCount = ((clubNowPage - 1) * clubCountList) + 1; //페이지에 보여줄 첫번째 게시물 

			endCount = clubNowPage * clubCountList;   // 페이지에 보여줄 마지막 게시물
			
			pageVO.setStartCount(startCount);
			pageVO.setEndCount(endCount);
		
			System.out.println(pageVO.getEndCount());
			System.out.println(pageVO.getStartCount());
			
			System.out.println("ㅋ워드 없음");
			clublist = service.clublistview(pageVO);
		}
		
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("clubNowPage", clubNowPage);
		mv.addObject("list", clublist);
		mv.setViewName("/club/ClubList");
		return mv;
	}
	
	
	/*
	* @메소드명: clubDetail
	* @역할: views/club/clubDetail로 페이지 전환
	*
	* @param   없음
	* @return  ModelAndView :반환하는 경로
	*/
	@RequestMapping("/ClubDetail.club")
	public ModelAndView clubDetail(ClubListVO clublistVO){
//		System.out.println("c:"+ clublistVO.getC_title());
		
		ModelAndView mv = new ModelAndView();
		service.clubviewcount(clublistVO);
		
		ClubListVO list = service.clubdetail(clublistVO);
		mv.addObject("list", list);
		mv.setViewName("/club/ClubDetail");
//		System.out.println("태그"+list.getC_tag());
//		System.out.println("모집"+list.getC_recruit());
//		System.out.println("작성자:"+list.getU_id());
		return mv;
	}
	
	@RequestMapping("/bookmark.club")
    @ResponseBody
    public String bookmark(BookmarkVO bookmarkVO ,HttpSession session){       
         String u_id = (String)session.getAttribute("u_id");
         bookmarkVO.setU_id(u_id);
         int result = service.clubBookmark(bookmarkVO);
         if(result == 1){
             return "관심리스트에 추가되었습니다.";
         }else{
             return "실패";
         }
     }
	
	@RequestMapping("/bookmarkdelete.club")
    @ResponseBody
    public String bookmarkdel(BookmarkVO bookmarkVO ,HttpSession session){
         String u_id = (String)session.getAttribute("u_id");
         bookmarkVO.setU_id(u_id);
         int result = service.clubBookmarkdelete(bookmarkVO);
         if(result == 1){
             return "관심리스트가 삭제되었습니다.";
         }else{
             return "실패";
         }
     }
	
	
	/*
	* @메소드명: clubInput
	* @역할: views/club/clubList로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	
//	@RequestMapping("/ClubInput.club")
//	public String clubInput(){
//		System.out.println("ClubInput");
//		return "/club/ClubInput";
//	}
	
	@RequestMapping("/ClubInput.club")
	public ModelAndView clubInput(HttpSession session){
//		System.out.println("ClubInput");
		String user = (String)session.getAttribute("u_id");
		System.out.println("user:"+user);
		ModelAndView mv = new ModelAndView();
		List<InputListVO> applotlist = service.inputList(user);
		mv.addObject("list", applotlist);
		mv.setViewName("/club/ClubInput");
		System.out.println("Alist:"+applotlist.size());
		return mv;
	}
	
	/*
	* @메소드명: clubInputOk
	* @역할: ClubService를 호출하여 웹에서 가져온 Club 등록값을 전달 
	*
	* @param   clubVO:jsp form에서 가져온 값
	* 			c_dateFrom / c_timeFrom : 모임 운영 시작 날짜/시간
	* 			c_dateTo / c_timeTo : 모임 운영 종료 날짜/시간
	* 			c_recruitFrom / c_recruitTo : 모임 모집 시작/종료 날짜
	* 			c_place_v : 모임 장소 확정 or 미확정 value
	* 			b_place : 모임 장소 확정 후 예약 공간 미선택 value
	* 			main_address / detail_address : 모임 장소 확정시 주소 직접 입력 값
	* 			
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/ClubInputOk.club")
	public String clubInputOk(ClubVO clubVO, String c_dateFrom, String c_timeFrom, 
			String c_dateTo, String c_timeTo, String c_recruitFrom, String c_recruitTo, 
			String c_place_v, String c_place_c, String postcode, String main_address, String detail_address, 
			ClubImageVO cimgVO, HttpSession session){
		clubVO.setU_id((String)session.getAttribute("u_id"));
		System.out.println("u_id:"+clubVO.getU_id());
		System.out.println("c_place_v:"+ c_place_v);
		System.out.println("C_place1:"+ clubVO.getC_place());
		clubVO.setC_date(c_dateFrom + "/" + c_timeFrom + "~" + c_dateTo + "/" + c_timeTo);
		clubVO.setC_recruit(c_recruitFrom + "~" + c_recruitTo);
		
		if(c_place_v.equals("미확정")){
			clubVO.setC_place("미확정");
			System.out.println("C_placeAdd:"+clubVO.getC_place());
		}else if(c_place_v.equals("확정") && c_place_c.equals("etc")){
			clubVO.setC_place(postcode + "/" + main_address + "/" + detail_address);
			System.out.println("C_placeSUm:"+clubVO.getC_place());
		}
		
		int result = service.clubinput(clubVO, cimgVO);
		if(result > 0){
			System.out.println("DB입력 성공");
		}else{
			System.out.println("DB입력 실패");
		}
		return "redirect:/mypage/myReg/ClubMyList.myreg";
	}

}
