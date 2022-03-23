package yolo.user.service;

import java.util.List;

import yolo.host.dto.HostinfoVO;
import yolo.user.dto.UserVO;

/*
* @인터페이스명: UserService
*
* @version     1.0 17/06/28
* @author      함창수
* @see         yolo.user.service
* @since       JDK1.8
*/
public interface UserService {

	/*
	* @메소드명:  joinUser
	* @역할: UserController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   UserVO:UserController에서 전달받은 값
	* @return  int : 결과값
	*/
	public int joinUser(UserVO vo);
	
	/*
	* @메소드명:  idCheck
	* @역할: UserController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   UserVO:UserController에서 전달받은 값
	* @return  UserVO : 결과값
	*/
	public UserVO idCheck(UserVO vo);
	
	/*
	* @메소드명:  idCheck
	* @역할: UserController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   UserVO:UserController에서 전달받은 값
	* @return  int : 결과값
	*/
	public UserVO loginUser(UserVO vo);
    
	public HostinfoVO hostselect(UserVO reVO);
	
}
