package yolo.mypage.myshare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.ShareVO;

/*
 * @클래스명: MyshareDAO
 * 
 * @version		1.0 17/07/06
 * @author		김명희
 * @see			yolo.mypage.myshare.dao
 * @since		JDK1.8
 *
 */
@Repository
public class MyshareDAO {
	
	@Autowired
	SqlSessionTemplate session;

	/*
	* @메소드명: myshareList
	* @역할:  mypage의 shareList를 조건검색
	* @param   
	* @return  List<ShareMainListVO>: DB select쿼리문 결과값
	*/
	public List<ShareMainListVO> myshareList(String uid) {
		List<ShareMainListVO> list = session.selectList("myshare.myshareList",uid);	
		return list;
	}

	/*
	* @메소드명: sdetail
	* @역할:  mypage의 조건검색된 sharelist의 상세페이지 이동
	* @param   
	* @return  List<ShareMainListVO>: DB select쿼리문 결과값
	*/
	public ShareMainListVO sdetail(ShareMainListVO sharemainlistVO){
		ShareMainListVO sdetail = null;
		try {
			sdetail = session.selectOne("myshare.sdetail", sharemainlistVO);
		} catch (Exception e) {
			System.out.println("sdetail 실패: " + e.getMessage());	
		}
		return sdetail;
	}
	
	/*
	* @메소드명: myshareEdit
	* @역할:  mypage sharelist의 myShareEdit페이지 이동
	* @param   
	* @return  List<ShareMainListVO>: DB select쿼리문 결과값
	*/
	public List<ShareMainListVO> myshareEdit(ShareVO vo){
		List<ShareMainListVO> list = null;
		try {
			list = session.selectList("myshare.myshareEdit", vo);
		} catch (Exception e) {
			System.out.println("회원이 쉐어링 등록한 페이지 보기(myshareEdit) 에러:" + e.getMessage());
		}
		return list;
	}
	
	/*
	* @메소드명: myshareDelete
	* @역할:  mypage sharelist 페이지 삭제
	* @param   
	* @return  List<ShareMainListVO>: DB select쿼리문 결과값
	*/
	public int myshareDelete(ShareMainListVO sharemainlistVO){
		int result = 0;
		try {
			result = session.delete("myshare.myshareDelete", sharemainlistVO);
			
		} catch (Exception e) {
			System.out.println("sdetail 실패: " + e.getMessage());	
		}
		return result;
	}
}
