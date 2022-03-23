package yolo.mypage.bookmark.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yolo.lot.dto.LotListVO;
import yolo.mypage.bookmark.dto.BookmarkVO;
import yolo.mypage.bookmark.service.BookmarkService;

@Controller
@RequestMapping("mypage/appStatus")
public class BookmarkController {
	
	@Autowired
	BookmarkService service;

	@RequestMapping("/InterestList.myinfo")
	public ModelAndView myBookmarkList(BookmarkVO vo ,HttpSession session){
		ModelAndView mv = new ModelAndView();
		vo.setU_id( (String)session.getAttribute("u_id"));
		List<BookmarkVO> bmlist = service.myBookmark(vo);
		List<LotListVO> lotlist =  service.myBookmarkLotList(vo);
		System.out.println( "가져온 찜목록 수:" + bmlist.size() );
		System.out.println( "가져온 찜공간:" + lotlist.size() );
		mv.addObject("bmlist",bmlist);
		mv.addObject("lotlist",lotlist);
		mv.setViewName("/mypage/appStatus/InterestList");
		return mv;
	}
	
	
}
