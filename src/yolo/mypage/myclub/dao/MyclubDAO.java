package yolo.mypage.myclub.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.club.dto.ClubListVO;

/*
 * @클래스명: MyclubDAO
 * @version		1.0 17/07/06
 * @author		김명희
 * @see			yolo.mypage.myshare.dao
 * @since		JDK1.8
 */
@Repository
public class MyclubDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: myclubList
	* @역할:  mypage의 clubList를 조건검색
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public List<ClubListVO> myclubList(String uid){
		List<ClubListVO> list = session.selectList("myclub.myclubList", uid);
		
		return list;
		
	}
	
	
	/*
	* @메소드명: cdetail
	* @역할:  mypage의 조건검색된 clublist의 상세페이지 이동
	* @param   
	* @return  List<ClubListVO>: DB select쿼리문 결과값
	*/
	public ClubListVO cdetail(ClubListVO clublistVO) {
		ClubListVO cdetail = null;
		try {
			cdetail = session.selectOne("myclub.cdetail", clublistVO);
		} catch (Exception e) {
			System.out.println("cdetail 실패: " + e.getMessage());		
		}
		return cdetail;
	}
	
	public int myclubDelete(ClubListVO clublistVO){
		int result = 0;
		try {
			result = session.delete("myclub.myclubDelete", clublistVO);
		} catch (Exception e) {
			System.out.println("myclubDelete 실패: " + e.getMessage());	
		}
		return result;
	}
}
