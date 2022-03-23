package yolo.mypage.bookmark.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.lot.dto.LotListVO;
import yolo.mypage.bookmark.dto.BookmarkVO;



@Repository
public class BookmarkDAO {
	
	/* 멤버필드 */
	@Autowired
	SqlSessionTemplate session;
	
    public List<BookmarkVO> myBookmarkSelect(BookmarkVO bookmarkVO){
    	List<BookmarkVO> list = session.selectList("mybookmark.mybookmarkselect",bookmarkVO);
        return list;
    }
    
    public List myLotbmSelect(BookmarkVO bookmarkVO){
    	List<LotListVO> list = session.selectList("mybookmark.mybookmarkSelectLot",bookmarkVO);
    	return list;
    }
}
