package yolo.mypage.appliedlot.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.mypage.appliedlot.dto.BookedlotVO;

/*
* @클래스명: appliedLotDAO
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.mypage.appliedlot.dao
* @since       JDK1.8
*/

@Repository
public class appliedLotDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: booklotlist
	* @역할:  DB에서 모든 applotlist를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<BookedlotVO> booklotlist(String user){
		HashMap map = new HashMap<>();
		map.put("user", user);
		List<BookedlotVO> lotlist = session.selectList("appliedlot.applotlist", map);
		return lotlist;
	}

}
