package yolo.lot.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.host.dto.EntrepreneurVO;
import yolo.host.dto.HostinfoVO;
import yolo.lot.dao.LotDAO;
import yolo.lot.dto.BooklotVO;
import yolo.lot.dto.BookmarkVO;
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.LotPagingVO;
import yolo.lot.dto.PostscriptVO;
import yolo.lot.dto.PrivateimageVO;
import yolo.lot.dto.PrivatelotVO;
import yolo.lot.dto.TimetableVO;
import yolo.lot.dto.ZipcodeVO;

@Service
public class LotServiceImpl implements LotService {
	
	@Autowired
	LotDAO ldao;
	
	public int lotinput(PrivatelotVO privateVO, PrivateimageVO primgVO, EntrepreneurVO entrepreneurVO){
		 int result = ldao.lotinput(privateVO, primgVO, entrepreneurVO);
		 return result;
	}
	
	public List<LotListVO> lotlistview(LotPagingVO lpageVO){      
		return ldao.lotlistview(lpageVO);
	}
	
	public List<LotListVO> lotsearch(String sido, String gugun, String rdate, String rcount){      
		return ldao.lotsearch(sido, gugun, rdate, rcount);
	}
	
	public LotListVO lotdetailview(LotListVO lotlistVO){
		return ldao.lotdetailview(lotlistVO);
	}
	
	public LotListVO lotreserve(LotListVO lotlistVO){      
		return ldao.lotreserve(lotlistVO);
	}
	
	public int lotreview(PostscriptVO postVO){
		int result = ldao.lotreview(postVO);
		return result;
	}
	
	public List<PostscriptVO> lotreviewlist(PostscriptVO postVO){
		return ldao.lotreviewlist(postVO);
	}
	
	public List<ZipcodeVO> selectsido(){
		return ldao.selectsido();
	}
	
	public List<ZipcodeVO> searchgugun(ZipcodeVO zipcodeVO){
		return ldao.searchgugun(zipcodeVO);
	}
	
	@Override
	public TimetableVO gettime(TimetableVO timetableVO) {
		 
		return ldao.gettime(timetableVO);
	}

	@Override
	public int lotpay(BooklotVO booklotVO, TimetableVO timetableVO) {
		// TODO Auto-generated method stub
		return ldao.lotpay(booklotVO, timetableVO);
	}

	@Override
	public int lothostselect(HostinfoVO hvo) {
		return ldao.lothostselect(hvo);
	}

	@Override
	public int lotcount() {
		int lotcount = ldao.lotcount();
		return lotcount;
		
	}

	@Override
	public int lotviewcount(LotListVO lotlistVO) {
		int lotviewcount = ldao.lotviewcount(lotlistVO);
		return lotviewcount;
	}
	
	 @Override
	    public int lotBookmark(BookmarkVO bookmarkVO) {
	        int result = ldao.lotBookmarkInsert(bookmarkVO);
	        return result;
	    }

	 @Override
	    public int lotBookmarkdelete(BookmarkVO bookmarkVO) {
	        int result = ldao.lotBookmarkDelete(bookmarkVO);
	        return result;
	    }

	@Override
	public int lotbookmarkCheck(BookmarkVO bookmarkVO) {
		int result = ldao.lotBookmarkSelect(bookmarkVO);
		return result;
	}

}
