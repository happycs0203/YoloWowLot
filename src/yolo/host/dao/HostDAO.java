package yolo.host.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.host.dto.EntrepreneurVO;
import yolo.host.dto.HostinfoVO;
import yolo.lot.dto.BooklotVO;
import yolo.lot.dto.LotListVO;
import yolo.lot.dto.PrivatelotVO;

/*
* @클래스명: HostDAO
*
* @version     1.0 17/06/28
* @author      김일주
* @see         yolo.host.dao
* @since       JDK1.8
*/
@Repository
public class HostDAO {
	
	/* 멤버필드 */
	@Autowired
	SqlSessionTemplate session;
	

	/*
	* @메소드명: hostinputok
	* @역할: HostService에서 전달받은 값을 DB에 삽입
	*
	* @param   HostVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int hostinputok(HostinfoVO hvo){
		int result = 0;
		try{
		  result = session.insert("host.hostInputok", hvo);
		}catch(Exception ex){
			System.out.println("hostinputok 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	/*
	* @메소드명: hostmylotlist
	* @역할: HostService에서 전달받은 값을 DB에 삽입
	*
	* @param   HostVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public List<LotListVO> hostmylotlist(String h_num){
		List<LotListVO>	list = null;
		HashMap map = new HashMap<>();
		
		map.put("h_num", h_num);
		try{
			list = session.selectList("host.hostmylotlist", map);
		}catch(Exception ex){
			System.out.println("hostmylotlist 실패 : " + ex.getMessage());
		}
		return list;
	}

	public HostinfoVO hostselect(HostinfoVO hvo){
		HostinfoVO hostvo = session.selectOne("host.hostselect", hvo);
		return hostvo;
	}
	
	
	public int lotdelete(LotListVO lotlistVO){
		int result = 0;
		try{
			result = session.delete("host.lotdelete", lotlistVO);
			//result = session.delete("lot.lotimgdelete", primgVO);
			
		}catch(Exception ex){
			System.out.println("lotdelete 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	public PrivatelotVO getlot(PrivatelotVO privatelotVO){
		PrivatelotVO list = null;
		try{
			list = session.selectOne("host.getlotlist", privatelotVO);
		}catch(Exception ex){
			System.out.println("getlot 실패: " + ex.getMessage());
		}
		return list;
	}
	
	public List<BooklotVO> searchbook(LotListVO lotlistVO){
		List<BooklotVO> list = null;
		try{
			
			list = session.selectList("host.booklist", lotlistVO);
		}catch(Exception ex){
			System.out.println("hostmylotlist 실패 : " + ex.getMessage());
		}
		return list;
	}
	
	public List<EntrepreneurVO> getentre(String h_num) {
		List<EntrepreneurVO> entvo = null;
		HashMap map = new HashMap<>();
		try{
			map.put("h_num", h_num);
			entvo = session.selectList("host.getentre", map);
		}catch(Exception ex){
			System.out.println("getentre 실패 : " + ex.getMessage());
		}
		return entvo;
	}
	
	public int lotmodify(PrivatelotVO privateVO) {
		int result = 0;
		try{

			result = session.update("host.lotmodify", privateVO);
		}catch(Exception ex){
			System.out.println("getentre 실패 : " + ex.getMessage());
		}
		
		return result;
	}
}
