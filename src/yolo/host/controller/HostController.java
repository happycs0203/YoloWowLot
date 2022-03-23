package yolo.host.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

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
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.PrivateimageVO;
import yolo.lot.dto.PrivatelotVO;
import yolo.lot.service.LotService;

/*
* @클래스명: HostController
*
* @version     1.0 17/06/28
* @author      김일주
* @see         yolo.host.controller
* @since       JDK1.8
*/
@Controller
@RequestMapping("host")
@SessionAttributes("privateVO")
public class HostController {
	
	/* 멤버필드 */
	@Autowired
	HostService service;
	
	@Autowired
	LotService lservice;
	
	@ModelAttribute("privateVO")
	public PrivatelotVO saveSession(){
	     return new PrivatelotVO();
	}
	
	
	/*
	* @메소드명: hostmain
	* @역할: views/host/HostMain 시작 화면
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
   @RequestMapping("/HostMain.host")	
   public ModelAndView hostmain(HostinfoVO hvo, HttpSession session){
	    ModelAndView mv = new ModelAndView();

	    mv.setViewName("/host/HostMain.host");
	   
	    return mv;		
   }
   
   /*
	* @메소드명: hostinput
	* @역할: views/host/HostInput으로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
   @RequestMapping("/HostInput.host")	
   public String hostinput(){  
	   
	   return "/host/HostInput.host";
	   		
   }
   
   /*
  	* @메소드명: hostinputok
  	* @역할: 호스트 등록후 views/host/hostMain으로 페이지 전환
  	*
  	* @param   HostinfoVO: jsp form에서 가져온 값
  	* @return  String:반환하는 경로
  	*/
   @RequestMapping("/HostInput_Ok.host")	
   public String hostinputok(HostinfoVO hostinfoVO, HttpSession session ){  
	   hostinfoVO.setU_id((String)session.getAttribute("u_id"));
	   service.hostinputok(hostinfoVO);
	   return "/host/HostMain.host";  		
   }

   
   /*
 	* @메소드명: hostmylot
 	* @역할: 호스트에서 내가 등록한 공간 보기
 	*
 	* @param   HostinfoVO: jsp form에서 가져온 값
 	* @return  String:반환하는 경로
 	*/ 
   @RequestMapping("/HostMyLot.host")
   public ModelAndView hostmylot( HttpSession session ){
	   ModelAndView mv = new ModelAndView();
	   String h_num = (String)session.getAttribute("h_num");
	  
	   List<LotListVO> list = service.hostmylotlist(h_num);
	 
	   mv.addObject("list", list);
	   mv.addObject("dlist", list);
	   mv.setViewName("/host/HostMyLot/modal_hostmylot_delete.host");
	   return mv;
   }
   
   @RequestMapping("/HostBook.host")
   public ModelAndView hostbook(HttpSession session){
	   ModelAndView mv = new ModelAndView();
	   String h_num = (String)session.getAttribute("h_num");
	   System.out.println(h_num);
	   List<LotListVO> list = service.hostmylotlist("h_61");
	   System.out.println(list.size());
	   
	   mv.addObject("list", list);
	   mv.setViewName("/host/HostBook.nohost");
	   //mv.addObject();
	   return mv;
   }
   
   /*
	* @메소드명: lotdelete
	* @역할: 호스트 내공간보기에서 공간 삭제
	*
	* @param   LotListVO: jsp form에서 가져온 값
	* @return  String:반환하는 경로
	*/ 
  @RequestMapping("/LotDelete.host")
  public ModelAndView lotdelete(LotListVO lotlistVO){
	   ModelAndView mv = new ModelAndView();
	   service.lotdelete(lotlistVO);   
	   mv.setViewName("redirect:/host/HostMyLot.host");
	   return mv;
  }
  
  /*
	* @메소드명: modifyfirst
	* @역할:   공간 수정 버튼 클릭 -> 첫번째 페이지로 전환
	*
	* @param   LotListVO: jsp form에서 가져온 값
	* @return  String:반환하는 경로
	*/ 
@RequestMapping("/LotModify.host")
public ModelAndView modifyfirst(PrivatelotVO privatelotVO, HttpSession session){
	   ModelAndView mv = new ModelAndView();
	   String h_num = (String)session.getAttribute("h_num");
	   System.out.println("pri : "+privatelotVO.getPri_num());
	   PrivatelotVO plotVO = service.getlot(privatelotVO);
	   System.out.println(plotVO.getPri_title());
//	   List<EntrepreneurVO> entlist = service.getentre(h_num);
//	   session.setAttribute("privatelotVO", privatelotVO);
	   
	   session.setAttribute("plotVO", plotVO);
	   
	   mv.setViewName("/host/ModifyFirst.host");
	   return mv;
}

@RequestMapping("/LotModifySecond.host" )
public ModelAndView LotModifySecond(@ModelAttribute("privateVO") PrivatelotVO privateVO, PrivateimageVO primgVO, HttpSession session
		,String lot_postcode, String lot_main_address, String lot_detail_address){
	ModelAndView mv = new ModelAndView();
	System.out.println(privateVO.getPri_title());
	System.out.println(privateVO.getPri_type());
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
	 mv.setViewName("/host/ModifySecond.host");
	 return mv;
}

/*
* @메소드명: lotinputsecond
* @역할: 두번째 공간등록 페이지  
*
* @param   PrivatelotVO, PrivateimageVO 값
* @return  String:반환하는 경로
*/
@RequestMapping("/LotModifyLast.host")
public ModelAndView modifylast(@ModelAttribute("privateVO") PrivatelotVO privateVO, HttpSession session
    , String pri_accountbank, String pri_accountnum, String pri_accountname
    , EntrepreneurVO entrepreneurVO, String e_rnum1, String e_rnum2, String e_rnum3
	, String postcode, String main_address, String detail_address){
	ModelAndView mv = new ModelAndView();
	
	System.out.println(privateVO.getPri_title());
	System.out.println(privateVO.getPri_type());
	//pri 계좌번호 합치기
	if(pri_accountnum != null){
	 privateVO.setPri_account(pri_accountbank + "/" + pri_accountnum + "/" + pri_accountname );
	}
	 //entre 번호 합치기
	 entrepreneurVO.setE_addr(postcode+"/"+main_address +"/"+ detail_address);
	 
	 entrepreneurVO.setE_rnum(e_rnum1+"-"+e_rnum2+"-"+e_rnum3);
	 
	 session.setAttribute("entrepreneurVO", entrepreneurVO);
	 mv.setViewName("/host/ModifyLast.host");
	return mv;
}

/*
* @메소드명: lotinputlast
* @역할: 마지막공간등록 페이지  
*
* @param   PrivatelotVO, PrivateimageVO 값
* @return  String:반환하는 경로 
*/
@RequestMapping("/LotModifyFinish.host")
public String modifylastfinish(@ModelAttribute("privateVO") PrivatelotVO privateVO
		, SessionStatus sessStatus, HttpSession session){
 PrivateimageVO primgVO = (PrivateimageVO)session.getAttribute("primgVO");
 EntrepreneurVO entrepreneurVO = (EntrepreneurVO)session.getAttribute("entrepreneurVO");
PrivatelotVO privatelotVO = (PrivatelotVO)session.getAttribute("plotVO");
 //호스트번호
 privateVO.setH_num((String)session.getAttribute("h_num"));
 privateVO.setPri_num(privatelotVO.getPri_num());
 System.out.println(privateVO.getH_num());
 System.out.println(privateVO.getPri_type());
// lservice.lotinput(privateVO, primgVO, entrepreneurVO);
 System.out.println("pri_type =" + privateVO.getPri_type());
 service.lotmodify(privateVO);
 
 //이미지 넘겨오나?
 sessStatus.setComplete();
 return "redirect:/host/HostMyLot.host";
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





   
@RequestMapping(value="/ShowSchedule.host", produces="text/plain; charset=UTF-8")
@ResponseBody
public String showschedule(LotListVO lotlistVO){
	   System.out.println("이벤트 " + lotlistVO.getPri_num());
	   //예약 날짜와 예약시간을 봐야된다.
	   //예약 한사람도 가지고온다.
	   List<BooklotVO> blist = service.searchbook(lotlistVO);
	   String json = parsejson(blist);
	   return json;
}

public String parsejson(List<BooklotVO> list){
        //props의 JSON정보를 담을 Array 선언
        JSONArray propsArray = new JSONArray();
        
        for(BooklotVO bookVO: list){
           //props의 한명 정보가 들어갈 JSONObject 선언
           JSONObject propsInfo = new JSONObject();
           
           propsInfo.put("title", bookVO.getBl_name());
           
           String alltime = bookVO.getBl_time();
           StringTokenizer st = new StringTokenizer(alltime, "/");
           List<String> times = new ArrayList<String>();
           String starttime = null;
           String endtime = null;
           for(int i = 0; st.hasMoreTokens(); i++){
         	  times.add(st.nextToken());
           }
           if(times.size() > 1){
         	  starttime = times.get(0)+":00";
         	  endtime = times.get(times.size()-1)+":00";
         	  propsInfo.put("start", bookVO.getBl_date()+"T"+starttime);
         	  propsInfo.put("end", bookVO.getBl_date()+"T"+endtime);
           }else{
         	  starttime = alltime+":00";
         	  propsInfo.put("start", bookVO.getBl_date()+"T"+starttime);
           }
            propsArray.add(propsInfo);
        }
        System.out.println(propsArray.toString());
        return propsArray.toString();
  }


}
