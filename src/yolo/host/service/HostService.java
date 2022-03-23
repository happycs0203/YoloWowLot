package yolo.host.service;

import java.util.List;

import yolo.host.dto.EntrepreneurVO;
import yolo.host.dto.HostinfoVO;
import yolo.lot.dto.BooklotVO;
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.PrivatelotVO;

/*
* @인터페이스명: HostService
*
* @version     1.0 17/07/07
* @author      김일주
* @see         yolo.host.service
* @since       JDK1.8
*/
public interface HostService {
	
	
	/*
	* @메소드명: hostinputok
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   HostVO:HostController에서 전달받은 값
	* @return  int : 결과값
	*/
	public int hostinputok(HostinfoVO hvo);
	
	/*
	* @메소드명: hostmylotlist
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   HostVO:HostController에서 전달받은 값
	* @return  
	*/
	public List<LotListVO> hostmylotlist(String h_num);
	
	
	
	/*
	* @메소드명: lotdelete
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   HostVO:HostController에서 전달받은 값
	* @return  
	*/
	public int lotdelete(LotListVO lotlistVO);
	
	/*
	* @메소드 명: getlot
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   LotListVO 에서 전달받은 값
	* @return  
	*/
	public PrivatelotVO getlot(PrivatelotVO privatelotVO);
	
	/*
	* @메소드 명: getlot
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   LotListVO 에서 전달받은 값
	* @return  
	*/
	public List<EntrepreneurVO> getentre(String h_num);
	
	/*
	* @메소드명: searchbook
	* @역할: HostController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   LotListVO:HostController에서 전달받은 값
	* @return   List<BooklotVO> : 결과값
	*/
	public List<BooklotVO> searchbook(LotListVO lotlistVO);
	
	
	public int lotmodify(PrivatelotVO privateVO);
}
