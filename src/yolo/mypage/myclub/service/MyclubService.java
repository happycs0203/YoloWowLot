package yolo.mypage.myclub.service;

import java.util.List;

import yolo.club.dto.ClubListVO;

/*
 * @인터페이스명 : MyclubService
 * @version		1.0 17/07/06
 * @author		김명희
 * @see			yolo.club.service
 * @since 		JDK1.8
 */
public interface MyclubService {
	
	/*
	* @메소드명: myclubList
	* @역할: MyclubController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ClubListVO에서 전달받은 값
	* @return  
	*/
	public List<ClubListVO> myclubList(String uid);
	
	/*
	* @메소드명: cdetail
	* @역할: MyclubController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ClubListVO에서 전달받은 값
	* @return  
	*/
	public ClubListVO cdetail(ClubListVO clublistVO);

	/*
	* @메소드명: myclubDelete
	* @역할: MyclubController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ClubListVO에서 전달받은 값
	* @return  
	*/
	public int myclubDelete(ClubListVO clublistVO);
}
