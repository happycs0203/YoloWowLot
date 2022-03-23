package yolo.mypage.appliedlot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.mypage.appliedlot.dao.appliedLotDAO;
import yolo.mypage.appliedlot.dto.BookedlotVO;

/*
* @클래스명: appliedLotServiceImpl
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.mypage.appliedlot.service
* @since       JDK1.8
*/

@Service
public class appliedLotServiceImpl implements appliedLotService {
	
	@Autowired
	appliedLotDAO applotdao;
	
	public List<BookedlotVO> booklotlist(String user){
		
		return applotdao.booklotlist(user);
	}
}
