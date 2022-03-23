package yolo.lot.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.host.dto.EntrepreneurVO;
import yolo.host.dto.HostinfoVO;
import yolo.lot.dto.BooklotVO;
import yolo.lot.dto.BookmarkVO;
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.LotPagingVO;
import yolo.lot.dto.PostscriptVO;
import yolo.lot.dto.PrivateimageVO;
import yolo.lot.dto.PrivatelotVO;
import yolo.lot.dto.TimetableVO;
import yolo.lot.dto.ZipcodeVO;

/*
* @클래스명: LotDAO
*
* @version     1.8 17/07/05
* @author      김일주
* @see         yolo.lot.dao
* @since       JDK1.8
*/
@Repository
public class LotDAO {
	
	/* 멤버필드 */
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: lotinput
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   PrivatelotVO,PrivateimageVO,EntrepreneurVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int lotinput(PrivatelotVO privateVO, PrivateimageVO primgVO, EntrepreneurVO entrepreneurVO){
		int result=0;
		try{
			result = session.insert("lot.lotinput", privateVO);	
			result += session.insert("lot.lotimginput", primgVO);
			result += session.insert("lot.entrepreneurinput", entrepreneurVO);
			if(result > 2){
				session.commit();
			}else{
				session.rollback();
			}
		}catch(Exception ex){
			System.out.println("lotinput 실패: " + ex.getMessage());
		}
		return result;
		
	}
	
	/*
	* @메소드명:  lotsearch
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotListVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public List<LotListVO> lotsearch(String sido, String gugun, String rdate, String rcount){
		List<LotListVO>	list = null;
		HashMap map = new HashMap<>();
		
		map.put("sido", sido);
		map.put("gugun", gugun);
		map.put("rdate", rdate); map.put("rcount", rcount);
		try{
			list = session.selectList("lot.lotsearch", map);
			System.out.println(list.size());
		}catch(Exception ex){
			System.out.println("lotlistview 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  lotlistview
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotListVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public List<LotListVO> lotlistview(LotPagingVO lpageVO){
		List<LotListVO>	list = null;
		try{
			list = session.selectList("lot.lotlistview",lpageVO);
		}catch(Exception ex){
			System.out.println("lotlistview 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  lotdetailview
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotListVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public LotListVO lotdetailview(LotListVO lotlistVO){
		
		LotListVO list = null;                                                   
		try{
			list = session.selectOne("lot.lotdetailview", lotlistVO);
			
		}catch(Exception ex){
			System.out.println("lotdetailview 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  lotreserve
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotListVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public LotListVO lotreserve(LotListVO lotlistVO){
		
		LotListVO list = null;
		try{
			list = session.selectOne("lot.lotreserve", lotlistVO);
			
		}catch(Exception ex){
			System.out.println("lotreserve 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  lotreview
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   PostscriptVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int lotreview(PostscriptVO postVO){
		int result=0;
		List<PostscriptVO> list = null;     
		try{
			result = session.insert("lot.lotreview", postVO);
			list = session.selectList("lot.lotreviewlist");
		}catch(Exception ex){
			System.out.println("lotreview 실패: " + ex.getMessage());
		}
				
		return result;
	}
	
	/*
	* @메소드명:  lotreviewlist
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   PostscriptVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public List<PostscriptVO> lotreviewlist(PostscriptVO postVO){
		List<PostscriptVO>	list = new ArrayList<PostscriptVO>();
		
		try{
			list = session.selectList("lot.lotreviewlist", postVO);
		}catch(Exception ex){
			System.out.println("lotreviewlist 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  selectsido
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   ZipcodeVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public List<ZipcodeVO> selectsido(){
		List<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
		
		try{
			list = session.selectList("zipcode.selectsido");
		}catch(Exception ex){
			System.out.println("selectsido 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	/*
	* @메소드명:  searchgugun
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   ZipcodeVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public List<ZipcodeVO> searchgugun(ZipcodeVO zipcodeVO){
		List<ZipcodeVO> list = new ArrayList<ZipcodeVO>();
		
		try{
			list = session.selectList("zipcode.searchgugun", zipcodeVO);
		}catch(Exception ex){
			System.out.println("selectsido 실패: " + ex.getMessage());
		}
				
		return list;
	}
	
	public TimetableVO gettime(TimetableVO timetableVO) {
		TimetableVO returnVO = session.selectOne("lot.gettime", timetableVO);
		return returnVO;
	}
	
	public int lotpay(BooklotVO booklotVO, TimetableVO timetableVO) {
		int result=0;
		try{
			TimetableVO returnVO = null;
			result = session.insert("lot.bookinsert", booklotVO);
			returnVO = session.selectOne("lot.gettime", timetableVO);
			//System.out.println("너버" + returnVO.getT_num());
			//예약된게 없을때
			if(returnVO==null){
				System.out.println("시간없음");
				String alltime[] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"};
				String seltimes = timetableVO.getT_time();
				String t_time = parsetime(seltimes, alltime);
				System.out.println(t_time);
				timetableVO.setT_time(t_time);
				System.out.println(timetableVO.getT_time());
				result += session.insert("lot.inserttime",timetableVO);
			//예약된게 있을때
			} else{
				System.out.println("시간있음");
				timetableVO.setPri_num(returnVO.getPri_num());
				String t_time = returnVO.getT_time();
				System.out.println(t_time);
				String alltime[] = divtime(t_time);
				String seltimes = timetableVO.getT_time();
				System.out.println("sel"+seltimes);
				t_time = parsetime(seltimes, alltime);
				timetableVO.setT_time(t_time);
				timetableVO.setT_num(returnVO.getT_num());
				System.out.println(timetableVO.getT_time());
				session.update("lot.updatetime", timetableVO);
			}
		}catch(Exception ex){
			System.out.println("lotreview 실패: " + ex.getMessage());
		}
		
		return result;
	}
	
	//시간 나누기 
	public String[] divtime(String t_time){
		StringTokenizer st = new StringTokenizer(t_time, "/");
		String alltime[] = new String[16];
		int i = 0;
		while(st.hasMoreTokens()){
			alltime[i] = st.nextToken();
			i++;
		}
		return alltime;
	}
	
	//시간 입력하기
	public String parsetime(String times, String[] alltime){
		   StringTokenizer st = new StringTokenizer(times, "/");
		   while(st.hasMoreTokens()){
			   String time = st.nextToken();
			   switch (time){
			   case "9:00" :
				   alltime[0] = "1";
				   break;
			   case "10:00" :
				   alltime[1] = "1";
				   break;
			   case "11:00" :
				   alltime[2] = "1";
				   break;
			   case "12:00" :
				   alltime[3] = "1";
				   break;
			   case "13:00" :
				   alltime[4] = "1";
				   break;
			   case "14:00" :
				   alltime[5] = "1";
				   break;
			   case "15:00" :
				   alltime[6] = "1";
				   break;
			   case "16:00" :
				   alltime[7] = "1";
				   break;
			   case "17:00" :
				   alltime[8] = "1";
				   break;
			   case "18:00" :
				   alltime[9] = "1";
				   break;
			   case "19:00" :
				   alltime[10] = "1";
				   break;
			   case "20:00" :
				   alltime[11] = "1";
				   break;
			   case "21:00" :
				   alltime[12] = "1";
				   break;
			   case "22:00" :
				   alltime[13] = "1";
				   break;
			   case "23:00" :
				   alltime[14] = "1";
				   break;
			   case "24:00" :
				   alltime[15] = "1";
				   break;	   
			   
			   }
			   
		   }
		   String t_time = new String();
		   for(int i = 0; i<alltime.length ; i++){
			   
			   if(i == alltime.length-1){
				   t_time +=  alltime[i];
			   } else{
				   t_time +=  alltime[i] + "/";
			   }
		   }   
		   System.out.println(t_time);
		   return t_time;
	  }
	
	public int lothostselect(HostinfoVO hvo){
		int result =0;
		HostinfoVO hostvo = session.selectOne("lot.lothostselect", hvo);
		if(hostvo == null){
			result =0;
		}else{
			result =1;
		}
		return result;
	}
	
	/*
	* @메소드명:  lotcount
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotPagingVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public int lotcount(){
		int lotcount = session.selectOne("lot.lotcount");
		return lotcount;
	}
	
	/*
	* @메소드명:  lotviewcount
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   LotPagingVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public int lotviewcount(LotListVO lotlistVO){
		int result=0;
		try{
			result = session.update("lot.lotviewcount", lotlistVO);
		}catch(Exception ex){
			System.out.println("lotviewcount 실패: " + ex.getMessage());
		}
		
		return result;
	}
   
	  
	/*
	* @메소드명:  lotBookmarkInsert
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   BookmarkVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public int lotBookmarkInsert(BookmarkVO bookmarkVO){
	        int result = session.insert("bookmark.bookmarkinsert",bookmarkVO);
	        return result;
	    }
	/*
	* @메소드명:  lotBookmarkDelete
	* @역할:     LotService에서 전달받은 값을 DB에 삽입
	*
	* @param   BookmarkVO
	* @return  list: DB insert쿼리문 결과값
	*/    
    public int lotBookmarkDelete(BookmarkVO bookmarkVO){
    	int result = session.delete("bookmark.bookmarkdelete",bookmarkVO);
    	return result;
	}
    
    public int lotBookmarkSelect(BookmarkVO bookmarkVO){
    	BookmarkVO vo = session.selectOne("bookmark.bookmarkselect" ,bookmarkVO);
    	int result = 0;
    	if(vo == null){
    		result = 0;
    	}else{
    		result = 1;
    	}
        return result;    	
    }
}
