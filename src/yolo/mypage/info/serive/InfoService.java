package yolo.mypage.info.serive;

import org.springframework.stereotype.Service;

import yolo.user.dto.UserVO;


public interface InfoService {
	
	/*
	* @메소드명:  myinfoview
	* @역할: UserController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   UserVO:UserController에서 전달받은 값
	* @return  int : 결과값
	*/
	public UserVO myinfoview(UserVO vo);
	
	/*
	* @메소드명:  myinfomodify
	* @역할: UserController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   UserVO:UserController에서 전달받은 값
	* @return  int : 결과값
	*/
	public int myinfomodify(UserVO vo);

}
