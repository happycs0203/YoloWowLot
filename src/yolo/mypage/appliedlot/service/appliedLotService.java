package yolo.mypage.appliedlot.service;

import java.util.List;

import yolo.mypage.appliedlot.dto.BookedlotVO;

/*
* @클래스명: appliedLotService
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.mypage.appliedlot.service
* @since       JDK1.8
*/

public interface appliedLotService {
	
	public List<BookedlotVO> booklotlist(String user);

}
