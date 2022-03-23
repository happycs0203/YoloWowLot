package yolo.mypage.myshare.service;

import java.util.List;

import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.ShareVO;

/*
 * @인터페이스명 : MyshareService
 * @version		1.0 17/07/06
 * @author		김명희
 * @see			yolo.share.service
 * @since 		JDK1.8
 */
public interface MyshareService {

	/*
	* @메소드명: myshareList
	* @역할: MyshareController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ShareMainListVO에서 전달받은 값
	* @return  
	*/
	public List<ShareMainListVO> myshareList(String uid);

	/*
	* @메소드명: sdetail
	* @역할: MyshareController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ShareMainListVO에서 전달받은 값
	* @return  
	*/
	public ShareMainListVO sdetail(ShareMainListVO sharemainlistVO);

	/*
	* @메소드명: myshareList
	* @역할: MyshareController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ShareMainListVO에서 전달받은 값
	* @return  
	*/
	public List<ShareMainListVO> myshareEdit(ShareVO vo);

	/*
	* @메소드명: myshareDelete
	* @역할: MyshareController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	* @param   ShareMainListVO에서 전달받은 값
	* @return  
	*/
	public int myshareDelete(ShareMainListVO sharemainlistVO);

	
	
}
