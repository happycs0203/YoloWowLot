package yolo.mypage.info.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.user.dto.UserVO;

@Repository
public class InfoDAO {
    
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: myinfoview
	* @역할: UserService에서 전달받은 값을 DB에 있는 id값과 pass를 비교
	*
	* @param   UserVO
	* @return  UserVO: DB selectOne쿼리문 결과값
	*/
	public UserVO myinfoview(UserVO vo){	
     	UserVO uservo  = session.selectOne("info.myinfoview", vo);
		return uservo;
	}
	
	/*
	* @메소드명: myinfomodify
	* @역할: UserService에서 전달받은 값을 DB에 있는 id값과 pass를 비교
	*
	* @param   UserVO
	* @return  UserVO: DB selectOne쿼리문 결과값
	*/
	public int myinfomodify(UserVO vo){	
     	int result= 0;
     	try{
     		result = session.update("info.myinfomodify", vo);
     	}catch(Exception ex){
     		System.out.println("myinfomodify 실패: " + ex.getMessage());
     	}
		return result;
	}

}
