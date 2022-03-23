package yolo.club.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.club.dto.ClubImageVO;
import yolo.club.dto.ClubListVO;
import yolo.club.dto.ClubPagingVO;
import yolo.club.dto.ClubVO;
import yolo.lot.dto.BookmarkVO;
import yolo.lot.dto.LotListVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.SharePagingVO;

/*
* @클래스명: ClubDAO
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.club.dao
* @since       JDK1.8
*/
@Repository
public class ClubDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	
	/*
	* @메소드명: clubinput
	* @역할: ClubService에서 전달받은 값을 DB에 삽입
	*
	* @param   ClubVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int clubinput(ClubVO clubVO, ClubImageVO cimgVO){
		
		int result = session.insert("club.clubInsert", clubVO);
		result += session.insert("club.clubimgInsert", cimgVO);
//		if(result > 1){
//			session.commit();
//		}else{
//			session.rollback();
//		}
		return result;
	}
	
	
	/*
	* @메소드명: inputlist
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<InputListVO> inputlist(String user){
		
		List<InputListVO> list = null;
		try{
			list = session.selectList("club.clubinputList", user);
		} catch (Exception e) {
			System.out.println("회원이 예약한 공간보기리스트 에러:" + e.getMessage());
		}
		return list;
	}
	
	
	/*
	* @메소드명: clublistview
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<ClubListVO> clublistview(ClubPagingVO pagingVO){
		List<ClubListVO> list = null;
		list = session.selectList("club.clublistview", pagingVO);
		return list;
	}
	
	
	/*
	* @메소드명: clubSearchgetCount
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return int : 검색에 따른 목록의 수
	*/
	public int clubSearchgetCount(String keyWord, String location) {
		
		HashMap map = new HashMap<>();
		if(keyWord != null){
			map.put("keyWord", keyWord);
		}
		else if(location != null){
			StringTokenizer st = new StringTokenizer(location, "/");
			
			String[] locations = new String[st.countTokens()];
			int i=0;
			while(st.hasMoreTokens())
			{	
				locations[i]=st.nextToken();
				i++; 	
			}
			map.put("locations", locations);
		}
		int clubSearchgetCount = session.selectOne("club.clubSearchgetCount", map);
		
		return clubSearchgetCount;
	}
	
	
	/*
	* @메소드명: clubTotalgetCount
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return int : 모든 목록의 수
	*/
	public int clubTotalgetCount() {
		int clubTotalCount = session.selectOne("club.clubTotalgetCount");
		
		return clubTotalCount;
	}
	
	
	/*
	* @메소드명: clubsearhKey
	* @역할:  DB에서 조건을 통해 clubList를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<ClubListVO> clubsearhKey(ClubPagingVO pageVO, String keyWord){
		HashMap map = new HashMap<>();
		map.put("endCount", pageVO.getEndCount());
		map.put("startCount", pageVO.getStartCount());
		map.put("keyWord", keyWord);
		List<ClubListVO> search = session.selectList("club.clubsearhKey", map);
		return search;
	}
	
	
	/*
	 * @메소드명: clubsearhLoc
	 * @역할:  DB에서 조건을 통해 clubList를 검색
	 *
	 * @param   
	 * @return  List<ClubListVO>: DB select쿼리문 결과값
	 */
	public List<ClubListVO> clubsearhLoc(ClubPagingVO pageVO, String location){
		HashMap map = new HashMap<>();
		StringTokenizer st = new StringTokenizer(location, "/");
//		List locations = new ArrayList();
		
		String[] locations = new String[st.countTokens()];
		int i=0;
		while(st.hasMoreTokens())
		{	
			locations[i]=st.nextToken();
			i++; 	
		}
		map.put("endCount", pageVO.getEndCount());
		map.put("startCount", pageVO.getStartCount());
		map.put("locations", locations);
		
		System.out.println("locations:"+locations);
		System.out.println("Arr:"+map.toString());
		List<ClubListVO> search = session.selectList("club.clubsearhLoc", map);
		
		return search;
	}
	
	
	/*
	* @메소드명: clubviewcount
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public int clubviewcount(ClubListVO clublistVO){
		int result=0;
		try{
			result = session.update("club.clubviewcount", clublistVO);
		}catch(Exception ex){
			System.out.println("clubviewcount 실패: " + ex.getMessage());
		}
		
		System.out.println("clubviewcount 성공");
		return result;
	}
	
	
	/*
	* @메소드명: clubdetail
	* @역할:  DB에서 모든 clubList를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public ClubListVO clubdetail(ClubListVO clublistVO){
		ClubListVO detail = null;
		try {
			detail = session.selectOne("club.clubdetail", clublistVO);
		} catch (Exception ex) {
			System.out.println("clubdetail 실패: " + ex.getMessage());
		}
		return detail;
	}
	
	/*
	* @메소드명:  clubBookmarkInsert
	* @역할:     ClubService에서 전달받은 값을 DB에 삽입
	*
	* @param   BookmarkVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public int clubBookmarkInsert(BookmarkVO bookmarkVO){
	        int result = session.insert("bookmark.bookmarkinsert",bookmarkVO);
	        return result;
    }
	
	/*
	* @메소드명:  clubBookmarkDelete
	* @역할:     ClubService에서 전달받은 값을 DB에서 삭제
	*
	* @param   BookmarkVO
	* @return  list: DB insert쿼리문 결과값
	*/
	public int clubBookmarkDelete(BookmarkVO bookmarkVO){
	        int result = session.delete("bookmark.bookmarkdelete",bookmarkVO);
	        return result;
    }

}
