package yolo.mypage.appliedclub.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.mypage.appliedclub.dto.SignclubVO;
import yolo.mypage.appliedclub.dto.appliedclubVO;

/*
* @클래스명: appliedclubDAO
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.mypage.appliedClub.dao
* @since       JDK1.8
*/

@Repository
public class appliedclubDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: signclublist
	* @역할:  DB에서 모든 appclublist를 검색
	*
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<SignclubVO> signclublist(String user){
		HashMap map = new HashMap<>();
		map.put("user",  user);
		List<SignclubVO> clublist = session.selectList("appliedclub.appclublist", map);
		return clublist;
	}
	
	public int signclubinput(appliedclubVO appclubVO){
		
		int result = session.insert("appliedclub.appclubinput", appclubVO);
		result += session.update("appliedclub.clubentryUp", appclubVO);
		
		return result;
	}
	
	public int signclubdelete(SignclubVO signclubVO){
		
		int result = session.update("appliedclub.clubentryDown", signclubVO);
		result += session.delete("appliedclub.appclubdelete", signclubVO);
		
		return result;
	}

}
