package yolo.club.service;


import java.util.List;

import yolo.club.dto.ClubImageVO;
import yolo.club.dto.ClubListVO;
import yolo.club.dto.ClubPagingVO;
import yolo.club.dto.ClubVO;
import yolo.lot.dto.BookmarkVO;
import yolo.share.dto.InputListVO;

/*
* @인터페이스명: ClubService
*
* @version     1.0 17/06/29
* @author      차인혁
* @see         yolo.club.service
* @since       JDK1.8
*/

public interface ClubService {
	
	/*
	* @메소드명: inputList
	* @역할: ClubController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   String user 세션에서 얻어온 아이디
	* @return  List<InputListVO> : 결과값
	*/
	public List<InputListVO> inputList(String user);
	
	/*
	* @메소드명: clubinput
	* @역할: ClubController에서 전달받은 값을 DB에 입력
	*
	* @param   ClubVO clubVO : 등록에 필요한 정보, ClubImageVO cimgVO : 이미지 정보
	* @return  int : 결과값
	*/
	public int clubinput( ClubVO clubVO, ClubImageVO cimgVO);
	
	/*
	* @메소드명: clublistview
	* @역할: ClubController에서 전달받은 값을 DB에 입력
	*
	* @param   ClubPagingVO pageVO : 페이징에 필요한 정보
	* @return  List<ClubListVO> : DB에서 얻은 모임 정보 목록
	*/
	public List<ClubListVO> clublistview(ClubPagingVO pageVO);
	
	/*
	* @메소드명: clubTotalgetCount
	* @역할: DB에서 모임 전체의 갯수를 얻음
	*
	* @return  int : 모임 전체의 갯수
	*/
	public int clubTotalgetCount();
	
	/*
	* @메소드명: clubSearchgetCount
	* @역할: DB에서 검색을 통해 출력한 모임의 갯수를 얻음
	*
	* @param   String keyword : 필터에서 선택한 키워드, String location : 필터에서 선택한 지역명
	* @return  int : 검색한 모임의 갯수
	*/
	public int clubSearchgetCount(String keyword, String location);
	
	/*
	* @메소드명: clubviewcount
	* @역할: detail 페이지를 열때마다 조회수 증가
	*
	* @param   ClubListVO clublistVO : vo에 담은 c_num
	* @return  int 
	*/
	public int clubviewcount(ClubListVO clublistVO);
	
	/*
	* @메소드명: clubdetail
	* @역할: ClubController에서 전달받은 값을 DB에 입력
	*
	* @param   ClubListVO clublistVO : vo에 담은 c_num
	* @return  ClubListVO : DB에서 얻은 모임의 세부정보
	*/
	public ClubListVO clubdetail(ClubListVO clublistVO);
	
	/*
	* @메소드명: clubBookmark
	* @역할: ClubController에서 전달받은 값을 DB에 입력
	*
	* @param   BookmarkVO bookmarkVO : vo에 담은 c_num
	* @return  
	*/
	public int clubBookmark(BookmarkVO bookmarkVO);
	
	/*
	* @메소드명: clubBookmarkdelete
	* @역할: ClubController에서 전달받은 값을 DB에서 삭제
	*
	* @param   BookmarkVO bookmarkVO : vo에 담은 c_num
	* @return  
	*/
	public int clubBookmarkdelete(BookmarkVO bookmarkVO);
	
	/*
	* @메소드명: clubsearhKey
	* @역할: keyWord를 sql문장에 전달하여 모임을 검색
	*
	* @param   ClubPagingVO pageVO : 페이징에 필요한 정보, String keyWord : 검색에 쓰이는 키워드
	* @return  List<ClubListVO> : DB에서 얻은 모임 정보 목록
	*/
	public List<ClubListVO> clubsearhKey(ClubPagingVO pageVO, String keyWord);
	
	/*
	* @메소드명: clubsearhLoc
	* @역할: location을 sql문장에 전달하여 모임을 검색
	*
	* @param   ClubPagingVO pageVO : 페이징에 필요한 정보, String location : 검색에 쓰이는 지역명
	* @return  List<ClubListVO> : DB에서 얻은 모임 정보 목록
	*/
	public List<ClubListVO> clubsearhLoc(ClubPagingVO pageVO, String location);
	

}
