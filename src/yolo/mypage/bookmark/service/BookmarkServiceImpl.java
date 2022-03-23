package yolo.mypage.bookmark.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.lot.dto.LotListVO;
import yolo.mypage.bookmark.dao.BookmarkDAO;
import yolo.mypage.bookmark.dto.BookmarkVO;

@Service
public class BookmarkServiceImpl implements BookmarkService {
	
	@Autowired
	BookmarkDAO bmdao;

	@Override
	public List<BookmarkVO> myBookmark(BookmarkVO vo) {
		List<BookmarkVO> list = bmdao.myBookmarkSelect(vo);
		return list;
	}

	@Override
	public List<LotListVO> myBookmarkLotList(BookmarkVO vo) {
		List<LotListVO> list = bmdao.myLotbmSelect(vo);
		return list;
	}

}
