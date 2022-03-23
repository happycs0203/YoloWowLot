package yolo.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.host.dto.HostinfoVO;
import yolo.user.dto.UserVO;
/*
* @클래스명: UserDAO
*
* @version     1.0 17/06/28
* @author      함창수
* @see         yolo.user.dao
* @since       JDK1.8
*/
@Repository
public class UserDAO {
	
	/* 멤버필드 */
	@Autowired
	SqlSessionTemplate session;
	
	
	/*
	* @메소드명: joinUser
	* @역할: UserService에서 전달받은 값을 DB에 삽입
	*
	* @param   UserVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int joinUser(UserVO userVO){ 
		int result = session.insert("user.userinsert", userVO);
		return result;
		
	}
	
	/*
	* @메소드명: idCheck
	* @역할: UserService에서 전달받은 값을 DB에 있는 id값을 비교
	*
	* @param   UserVO
	* @return  UserVO: DB selectOne쿼리문 결과값
	*/
	public UserVO idCheck(UserVO userVO) {
		UserVO vo = session.selectOne("user.usercheck", userVO);
		return vo;
	}
	
	/*
	* @메소드명: idCheck
	* @역할: UserService에서 전달받은 값을 DB에 있는 id값과 pass를 비교
	*
	* @param   UserVO
	* @return  UserVO: DB selectOne쿼리문 결과값
	*/
	public UserVO loginUser(UserVO userVO){
		UserVO vo = session.selectOne("user.usercheck", userVO);
		return vo;
	}
	
	public HostinfoVO hostselect(UserVO reVO){
		HostinfoVO hostvo = session.selectOne("user.hostselect", reVO);
		return hostvo;
	}
	
}
