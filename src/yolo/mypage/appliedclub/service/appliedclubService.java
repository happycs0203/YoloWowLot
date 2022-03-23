package yolo.mypage.appliedclub.service;

import java.util.List;
import yolo.mypage.appliedclub.dto.SignclubVO;
import yolo.mypage.appliedclub.dto.appliedclubVO;

/*
* @인터페이스명: appliedclubService
*
* @version     1.0 17/06/29
* @author      차인혁
* @see         yolo.mypage.appliedclubService
* @since       JDK1.8
*/


public interface appliedclubService {
	
	public List<SignclubVO> signclublist(String user);
	
	public int signclubinput(appliedclubVO appclubVO);
	
	public int signclubdelete(SignclubVO signclubVO);

}
