package yolo.mypage.appliedclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.mypage.appliedclub.dao.appliedclubDAO;
import yolo.mypage.appliedclub.dto.SignclubVO;
import yolo.mypage.appliedclub.dto.appliedclubVO;

/*
* @클래스명: appliedclubServiceImpl
*
* @version     1.0 17/06/27
* @author      차인혁
* @see         yolo.mypage.appliedclub.service
* @since       JDK1.8
*/

@Service
public class appliedclubServiceImpl implements appliedclubService {
	
	@Autowired
	appliedclubDAO appclubdao;
	
	public List<SignclubVO> signclublist(String user){
		return appclubdao.signclublist(user);
	}
	
	public int signclubinput(appliedclubVO appclubVO){
		return appclubdao.signclubinput(appclubVO);
	}
	
	public int signclubdelete(SignclubVO signclubVO){
		return appclubdao.signclubdelete(signclubVO);
	}

}
