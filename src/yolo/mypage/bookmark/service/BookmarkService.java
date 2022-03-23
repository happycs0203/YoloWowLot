package yolo.mypage.bookmark.service;

import java.util.List;

import yolo.lot.dto.LotListVO;
import yolo.mypage.bookmark.dto.BookmarkVO;

public interface BookmarkService {
	public List<BookmarkVO> myBookmark(BookmarkVO vo);
	
	public List<LotListVO> myBookmarkLotList(BookmarkVO vo);
}
