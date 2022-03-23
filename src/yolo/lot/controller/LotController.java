package yolo.lot.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

import yolo.host.dto.EntrepreneurVO;
import yolo.host.dto.HostinfoVO;
import yolo.host.service.HostService;
import yolo.lot.dto.BooklotVO;
import yolo.lot.dto.BookmarkVO;
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.LotPagingVO;
import yolo.lot.dto.PostscriptVO;
import yolo.lot.dto.PrivateimageVO;
import yolo.lot.dto.PrivatelotVO;
import yolo.lot.dto.TimetableVO;
import yolo.lot.dto.ZipcodeVO;
import yolo.lot.service.LotService;

/*
* @클래스명: LotController
*
* @version     1.8 17/07/05
* @author      김일주
* @see         yolo.lot.controller
* @since       JDK1.8
*/
@Controller 
@SessionAttributes("privateVO")
public class LotController {
	
	@Autowired
	LotService service;
	
	@Autowired
	HostService hservice;
	
	 @ModelAttribute("privateVO")
	   public PrivatelotVO saveSession(){
	      return new PrivatelotVO();
	   }
  
		/*
		* @메소드명: lotinput
		* @역할: 메뉴 -> 공간 등록 첫번째 전환 
		*
		* @param   PrivatelotVO
		* @return  String:반환하는 경로
		*/	
	@RequestMapping("lot/LotInputFirst.lot")
	public ModelAndView lotinput(HostinfoVO hvo, HttpSession session){
		   ModelAndView mv = new ModelAndView();
		   String u_id = (String)session.getAttribute("u_id");
		   hvo.setU_id(u_id);
           int hostresult = service.lothostselect(hvo);
		   if( hostresult == 1){
			    mv.setViewName("/lot/LotInputFirst.host");			   
		   }
		   else{
			   mv.setViewName("/host/HostInput.host");
		   }
 	
		return mv;
	}
	
	
	/*
	* @메소드명: lotinputfirst
	* @역할: 첫번째 공간등록 페이지 
	*
	* @param   PrivatelotVO
	* @return  String:반환하는 경로
	*/	
	 @RequestMapping("lot/LotInputSecond.lot" )
		public ModelAndView lotinputfirst(@ModelAttribute("privateVO") PrivatelotVO privateVO, PrivateimageVO primgVO, HttpSession session
				,String lot_postcode, String lot_main_address, String lot_detail_address){
		 ModelAndView mv = new ModelAndView();
		     session.setAttribute("primgVO", primgVO);
		    //address 합치기
			 //경도,위도
			 Float[] coords = new Float[2];
			 if(lot_main_address != null){
				 privateVO.setPri_addr(lot_postcode+"/"+lot_main_address +"/"+ lot_detail_address);
				 coords = geoCoding(lot_main_address);
			     //coords[0] : 위도 , coords[1] : 경도 
			     privateVO.setPri_lat(Float.toString(coords[0]));
			     privateVO.setPri_long(Float.toString(coords[1]));
			 }
			 mv.setViewName("/lot/LotInputSecond.host");
			 return mv;
		}
	    
	    public Float[] geoCoding(String location){ 
	      if (location == null) {
	         return null;
	      }     
	         Geocoder geocoder = new Geocoder();
	         // setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)
	         // setLanguate : 인코딩 설정
	         GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();
	         GeocodeResponse geocoderResponse;

	         try {
	            geocoderResponse = geocoder.geocode(geocoderRequest);
	            if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {

	               GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();
	               LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();
	                       
	               Float[] coords = new Float[2];
	               coords[0] = latitudeLongitude.getLat().floatValue();
	               coords[1] = latitudeLongitude.getLng().floatValue();
	               return coords;
	            }
	         } catch (IOException ex) {
	            ex.printStackTrace();
	         }
	      return null;
	   }
	    
	   /*
		* @메소드명: lotinputsecond
		* @역할: 두번째 공간등록 페이지  
		*
		* @param   PrivatelotVO, PrivateimageVO 값
		* @return  String:반환하는 경로
		*/
	    @RequestMapping("lot/LotInputLast.lot")
	    public ModelAndView lotinputsecond(@ModelAttribute("privateVO") PrivatelotVO privateVO, HttpSession session
	        , String pri_accountbank, String pri_accountnum, String pri_accountname
	        , EntrepreneurVO entrepreneurVO, String e_rnum1, String e_rnum2, String e_rnum3
			, String postcode, String main_address, String detail_address){
	    	ModelAndView mv = new ModelAndView();
	    	//pri 계좌번호 합치기
	    	if(pri_accountnum != null){
			 privateVO.setPri_account(pri_accountbank + "/" + pri_accountnum + "/" + pri_accountname );
	    	}
			 //entre 번호 합치기
			 entrepreneurVO.setE_addr(main_address +" "+ detail_address);
			 
			 entrepreneurVO.setE_rnum(e_rnum1+"-"+e_rnum2+"-"+e_rnum3);
			 
			 session.setAttribute("entrepreneurVO", entrepreneurVO);
			 mv.setViewName("/lot/LotInputLast.host");
			return mv;
		}
	  
	 /*
		* @메소드명: lotinputlast
		* @역할: 마지막공간등록 페이지  
		*
		* @param   PrivatelotVO, PrivateimageVO 값
		* @return  String:반환하는 경로 
		*/
	 @RequestMapping("lot/LotInputFinish.lot")
		public String lotinputlast(@ModelAttribute("privateVO") PrivatelotVO privateVO
				, SessionStatus sessStatus, HttpSession session){
		 PrivateimageVO primgVO = (PrivateimageVO)session.getAttribute("primgVO");
		 EntrepreneurVO entrepreneurVO = (EntrepreneurVO)session.getAttribute("entrepreneurVO");
		 
		 //호스트번호
		 privateVO.setH_num((String)session.getAttribute("h_num"));
		 System.out.println(privateVO.getH_num());
		 
		 service.lotinput(privateVO, primgVO, entrepreneurVO);
		 
		 //이미지 넘겨오나?
		 sessStatus.setComplete();
			return "redirect:/host/HostMyLot.host";
		}
	    
	    /*
		* @메소드명: lotsearch
		* @역할: 통합검색 후 결과를 리스트 보여주기
		*
		* @param   LotListVO 값
		* @return  String:반환하는 경로
		*/
	   @RequestMapping("lot/Lotsearch.lot")
		public ModelAndView lotsearch(String sido, String gugun, String rdate, String rcount, 
				LotListVO lotlistVO, ZipcodeVO zipcodeVO ){
		    System.out.println(sido+gugun+">>"+ rdate + ":::" + rcount);
		    
		    ModelAndView mv = new ModelAndView();
		    
		    List<LotListVO> list = service.lotsearch(sido, gugun, rdate, rcount);
		    //시,도 셀렉트박스
		    List<ZipcodeVO> zlist = service.selectsido();
		    //구,군 셀렉트박스
		    List<ZipcodeVO> gugunlist = service.searchgugun(zipcodeVO);
		    
		    String jsonList = json(list);
		    mv.addObject("jsonList",jsonList);
		    mv.addObject("list", list);
		    mv.addObject("zlist", zlist);
		    mv.addObject("gugunlist", gugunlist);
		    mv.setViewName("/lot/LotList.map");
			return mv;
		}
 
	    /*
		* @메소드명: lotlist
		* @역할: 공간 검색, 검색 결과 보여주기, 페이징
		*
		* @param   LotListVO 값
		* @return  String:반환하는 경로
		*/
	   @RequestMapping("lot/LotList.lot")
		public ModelAndView lotlist(LotPagingVO lpageVO, LotListVO lotlistVO, ZipcodeVO zipcodeVO ){
		    ModelAndView mv = new ModelAndView();
		    
		    
		    int lotTotalCount = service.lotcount(); //총 게시물 갯수 구하기
		    System.out.println("공간 총 게시물 수: " + lotTotalCount);
		    int lotCountList = 10; //한 페이지에 출력될 게시물 수
		    int LotCountPage = 5; //한 화면에 보여줄 페이지 수
		    int lotTotalPage = lotTotalCount / lotCountList; //총 페이지 수
		    if(lotTotalCount % lotCountList > 0){
		    	lotTotalPage++;
			}
		    
		    int LotNowPage = lpageVO.getLotNowPage(); //현재 보여줄 페이지 가져오기
		    
		    // 현재 보여줄 페이지 요청이 1페이지보다 작을때 1페이지로 변환
		    if (LotNowPage < 1) {
		    	LotNowPage = 1;
			} 
			
		    //보여줄 페이지 요청이 총 페이지 보다 클때  총 페이지로 변환
			if (lotTotalPage < LotNowPage) {
				LotNowPage = lotTotalPage;
			} 
 
			//화면에 보여줄 시작 페이지수
			int startPage = ((LotNowPage - 1) / LotCountPage) * LotCountPage + 1; 
			
			//화면에 보여줄 끝 페이지 수
			int endPage = startPage + LotCountPage - 1; 
			
			// 마지막에 보여줄 페이지 수가 총 페이지 수 보다 클때
			if (endPage > lotTotalPage) {
			    endPage = lotTotalPage;
			}
				
			int startCount = ((LotNowPage - 1) * lotCountList) + 1; //페이지에 보여줄 첫번째 게시물 
			int endCount = LotNowPage * lotCountList;   // 페이지에 보여줄 마지막 게시물
			lpageVO.setStartCount(startCount);
			lpageVO.setEndCount(endCount);
			
		    List<LotListVO> list = service.lotlistview(lpageVO);
		    //시,도 셀렉트박스
		    List<ZipcodeVO> zlist = service.selectsido();
		    //구,군 셀렉트박스
		    List<ZipcodeVO> gugunlist = service.searchgugun(zipcodeVO);
		    
		    String jsonList = json(list);
		    mv.addObject("jsonList",jsonList);
		    mv.addObject("list", list);
		    mv.addObject("zlist", zlist);
		    mv.addObject("gugunlist", gugunlist);
		    mv.addObject("startPage", startPage);
		    mv.addObject("endPage", endPage);
		    mv.addObject("LotNowPage", LotNowPage);
		    mv.setViewName("/lot/LotList.map");
			return mv;
		}
	   
	   public String json(List<LotListVO> list){
	       //최종 완성될 JSONObject 선언(전체)
	           JSONObject jsonObject = new JSONObject();
	           //props의 JSON정보를 담을 Array 선언
	           JSONArray propsArray = new JSONArray();
	           
	           for(LotListVO lotVO: list){
	              //props의 한명 정보가 들어갈 JSONObject 선언
	              JSONObject propsInfo = new JSONObject();
	              //위도 경도의 한명 정보
	              JSONObject positionInfo = new JSONObject();
	              propsInfo.put("kind", lotVO.getPri_kind());
	              propsInfo.put("number", lotVO.getPri_num());
	              propsInfo.put("title", lotVO.getPri_title());
	              propsInfo.put("image", lotVO.getPriimg_name());
	               propsInfo.put("type", lotVO.getPri_info());
	               propsInfo.put("price", lotVO.getPri_charge());
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

	           
	           return jsonInfo;
	     }
	   
	        /*
	 		* @메소드명: lotview
	 		* @역할: 공간 상세 페이지 
	 		*
	 		* @param   LotListVO 값
	 		* @return  String:반환하는 경로
	 		*/
	   @RequestMapping("lot/LotView.lot")
		public ModelAndView lotview(LotListVO lotlistVO, PostscriptVO postVO, BookmarkVO bookmarkVO, HttpSession session){
		   ModelAndView mv = new ModelAndView();
		    //조회수 증가
		    service.lotviewcount(lotlistVO);
		    //상세정보 보여주기
		    if("공공시설".equals(lotlistVO.getPri_kind())){
		    	
		    	mv.setViewName("/lot/LotPublicView.map");
		    }else{
		    	System.out.println("민간시설");
		    	mv.setViewName("/lot/LotView.map");
		    }
		    
		    //북마크 누른 것 검사
		    String u_id = (String)session.getAttribute("u_id");
		    int bmcheck = 0;
		    if(u_id==null || u_id=="" ){
		    	bmcheck = 0;
		    }else{
		    	bookmarkVO.setU_id( u_id );
		    	bookmarkVO.setBm_selnum( lotlistVO.getPri_num() );
		    	bmcheck = service.lotbookmarkCheck(bookmarkVO);
		    }
		    LotListVO list = service.lotdetailview(lotlistVO);
		    String jsonlot = lotjson(list);
		    List<PostscriptVO> review = service.lotreviewlist(postVO);
		    mv.addObject("list",list);
		    mv.addObject("jsonlot", jsonlot);
		    mv.addObject("review", review);
		    mv.addObject("bmcheck", bmcheck);
		    
			return mv;
		}
	   
	   public String lotjson(LotListVO lotVO){
	       //최종 완성될 JSONObject 선언(전체)
	           JSONObject jsonObject = new JSONObject();
	           //props의 한명 정보가 들어갈 JSONObject 선언
	           JSONObject propsInfo = new JSONObject();
	           //위도 경도의 한명 정보
	           JSONObject positionInfo = new JSONObject();
	           propsInfo.put("number", lotVO.getPri_num());
	           propsInfo.put("title", lotVO.getPri_title());
	           propsInfo.put("image", lotVO.getPriimg_name());
	           propsInfo.put("type", lotVO.getPri_info());
	           propsInfo.put("price", lotVO.getPri_charge());
	           propsInfo.put("address", lotVO.getPri_addr());
	           //위도 경도 추가
	           		positionInfo.put("lat", lotVO.getPri_lat());
	           		positionInfo.put("lng", lotVO.getPri_long());
	           propsInfo.put("position", positionInfo);   	
	           propsInfo.put("markerIcon", "marker-green.png");
	           jsonObject.put("prop", propsInfo);
	           
	           String jsonInfo = jsonObject.toJSONString();
	           System.out.println(jsonInfo);
	           return jsonInfo;
	     }
	   
	   /*
		* @메소드명: lotreview
		* @역할: 공간 상세 페이지 후기작
		*
		* @param   LotListVO 값
		* @return  String:반환하는 경로
		*/
	   @RequestMapping("lot/LotViewRe.lot")
	   @ResponseBody
	   public String lotreview(PostscriptVO postVO, HttpSession session){
		    String u_id = (String)session.getAttribute("u_id");
		    postVO.setU_id(u_id);
		    service.lotreview(postVO); 
		    
		    System.out.println(postVO.getPs_star());	
		    String jsonInfo = reviewjson(postVO);   
			return jsonInfo;
		}
	   

	   public String reviewjson(PostscriptVO postVO){
		   JSONObject jsonObject = new JSONObject();
            
		   jsonObject.put("ps_star", postVO.getPs_star());
		   jsonObject.put("u_id", postVO.getU_id());
		   jsonObject.put("pri_num", postVO.getPri_num());
		   jsonObject.put("ps_content", postVO.getPs_content());

		   String jsonInfo = jsonObject.toJSONString();
		   

			return jsonInfo;
		}
	   
	   /*
		* @메소드명: searchgugun
		* @역할: 구,군 ajax
		*
		* @param   ZipcodeVO 값
		* @return  String:반환하는 경로
		*/
	   @RequestMapping(value="/lot/LotListSearch.lot", produces="text/plain; charset=UTF-8")
	   @ResponseBody
	   public String gugun(ZipcodeVO zipcodeVO){
		   System.out.println(zipcodeVO.getSido());
		    //구,군 data값을 list받아옴
		   
		   List<ZipcodeVO> gugunlist = service.searchgugun(zipcodeVO);
 
		    String jsonInfo = gugunjson(gugunlist);   
		     
		    return jsonInfo; 
	   }
	   
	   public String gugunjson(List<ZipcodeVO> gugunlist){
		   
		   JSONObject jsonObject = new JSONObject();
		   
		 //gugunlist JSON정보를 담을 Array 선언
           JSONArray gArray = new JSONArray();
		   
           for(ZipcodeVO zipVO : gugunlist){
	          JSONObject propsInfo = new JSONObject();
	          
	          propsInfo.put("gugun", zipVO.getGugun());
	         
	          gArray.add(propsInfo);
           }
		   
          
           jsonObject.put("g", gArray );
		   

		   String jsonInfo = jsonObject.toJSONString();
		   System.out.println(jsonInfo);

			return jsonInfo;
		}
	   
	   
	   /*
		* @메소드명: lotreserve
		* @역할: 공간 예약하기 
		*
		* @param   LotListVO 값
		* @return  String:반환하는 경로
		*/
	   @RequestMapping("lot/LotReserve.lot")
		public ModelAndView lotreserve(LotListVO lotlistVO){
		   ModelAndView mv = new ModelAndView();
		   LotListVO list = service.lotreserve(lotlistVO);
		   System.out.println(list.getPri_num());
		    mv.addObject("list", list);
		    mv.setViewName("/lot/LotReserve.lot");
			return mv;
		}
	   
	   
	   
	   /*
		* @메소드명: lotreserveajax
		* @역할: 공간 예약하기 ajax 예약된 시간 확인 방법
		*
		* @param   String date 값
		* @return  String:반환하는 경로
		*/
	   
	   @RequestMapping("lot/LotReserveAjax.lot")
	   @ResponseBody
	   public String lotreserveajax(TimetableVO timetableVO){
		   System.out.println(timetableVO.getT_date());
		   TimetableVO timeVO = service.gettime(timetableVO);
		   String time = new String();
		   if(timeVO == null){
			   time = "0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0";
		   }
		   else{
			   time = timeVO.getT_time();
		   }
		   //데이터베이스에 들어가서 select 해준다음에 셀렉트 값이 있을경우 가지고오고
		   //없으면 가지고오지 않는다.
		   //date값이 있으면 0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/
		   //시간 리턴값
		   //시간을 string으로 넘겨준다음에
		   //슬레시를 slice로 자른다음에 넘긴다.
		   //그리고 동적으로 타임을 넘겨준다.
		   return time;
	   }
	   
	   @RequestMapping("lot/LotPay.lot") 
	   public ModelAndView lotpay(BooklotVO booklotVO, TimetableVO timetableVO, HttpSession session){
		   ModelAndView mv = new ModelAndView();
		   String u_id = (String)session.getAttribute("u_id");
		   System.out.println(u_id);
		   booklotVO.setU_id(u_id);
		   System.out.println(booklotVO.getU_id());
		   System.out.println(booklotVO.getBl_date() +" "+ timetableVO.getT_date() + "time " + booklotVO.getBl_time() + " " + timetableVO.getT_time() + " " + timetableVO.getPri_num());
		   String t_time = booklotVO.getBl_time();
		   timetableVO.setT_time(t_time);
		   service.lotpay(booklotVO, timetableVO);
		   
		   //mv.addObject(attributeValue);
		   mv.setViewName("redirect:/lot/LotReserve.lot?pri_num="+booklotVO.getPri_num());
		   return mv;
	   }
	   
	   @RequestMapping("lot/bookmark.lot")
       @ResponseBody
       public String bookmark(BookmarkVO bookmarkVO ,HttpSession session){       
            String u_id = (String)session.getAttribute("u_id");
            bookmarkVO.setU_id(u_id);
            int result = service.lotBookmark(bookmarkVO);
            if(result == 1){
                return "관심리스트에 추가되었습니다.";
            }else{
                return "실패";
            }
        }
       
       @RequestMapping("lot/bookmarkdelete.lot")
       @ResponseBody
       public String bookmarkdel(BookmarkVO bookmarkVO ,HttpSession session){
            String u_id = (String)session.getAttribute("u_id");
            bookmarkVO.setU_id(u_id);
            int result = service.lotBookmarkdelete(bookmarkVO);
            if(result == 1){
                return "관심리스트가 삭제되었습니다.";
            }else{
                return "실패";
            }
        }
 
    	   
}
