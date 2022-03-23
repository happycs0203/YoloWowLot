package yolo.club.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.club.dao.ClubDAO;
import yolo.club.dto.ClubImageVO;
import yolo.club.dto.ClubListVO;
import yolo.club.dto.ClubPagingVO;
import yolo.club.dto.ClubVO;
import yolo.lot.dto.BookmarkVO;
import yolo.share.dto.InputListVO;

@Service
public class ClubServiceImpl implements ClubService {

	@Autowired
	ClubDAO clubdao;
	
	@Override
	public int clubinput(ClubVO clubVO, ClubImageVO cimgVO) {
//		System.out.println( "파일경로:" + cimgVO.getCimg_path());
		int result = clubdao.clubinput(clubVO, cimgVO);
		return result;
	}
	
	public List<ClubListVO> clublistview(ClubPagingVO pageVO){
		return clubdao.clublistview(pageVO);
	}
	
	public int clubTotalgetCount() {
		
		return clubdao.clubTotalgetCount();
	}
	
	public int clubSearchgetCount(String keyword, String location) {
	
		return clubdao.clubSearchgetCount(keyword, location);
	}
	
	public List<InputListVO> inputList(String user){
		return clubdao.inputlist(user);
	}
	
	
	public int clubviewcount(ClubListVO clublistVO){
		
		return clubdao.clubviewcount(clublistVO);
	}
	
	public ClubListVO clubdetail(ClubListVO clublistVO){
		return clubdao.clubdetail(clublistVO);
	}
	
	public int clubBookmark(BookmarkVO bookmarkVO){
		return clubdao.clubBookmarkInsert(bookmarkVO);
	}
	
	public int clubBookmarkdelete(BookmarkVO bookmarkVO){
		return clubdao.clubBookmarkDelete(bookmarkVO);
	}
	
	public List<ClubListVO> clubsearhKey(ClubPagingVO pageVO, String keyWord){
		return clubdao.clubsearhKey(pageVO, keyWord);
	}
	
	public List<ClubListVO> clubsearhLoc(ClubPagingVO pageVO, String location){
		return clubdao.clubsearhLoc(pageVO, location);
	}

}
