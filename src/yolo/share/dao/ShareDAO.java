package yolo.share.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.share.dto.BookShareVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.SharePagingVO;
import yolo.share.dto.ShareVO;

/*
 * @클래스명: ShareDAO
 * 
 * @version		1.0 17/07/01
 * @author		김찬종
 * @see			yolo.share.dao
 * @since		JDK1.8
 *
 */
@Repository
public class ShareDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	/*
	 * @메소명: shareInput
	 * @역활: ShareService에서 전달받은 값을 DB에 삽입
	 * 
	 * @param	ShareVO
	 * @return int: DB insert쿼리문 결과값
	 */
	public int shareInput(ShareVO vo) {
		
		
		int result = session.insert("share.shareInsert", vo);
		
		return result;
	}

	public List<ShareMainListVO> shareList(SharePagingVO vo) {
		List<ShareMainListVO> list = null;
		try {
			list = session.selectList("share.shareList", vo);
		} catch (Exception e) {
			System.out.println("shareList 실패: "+ e.getMessage());
		}
		return list;
	}

	public List<InputListVO> shareInputList(String uid) {
		List<InputListVO> list = null;
		try {
			
			list = session.selectList("share.shareInputList", uid);
			
		} catch (Exception e) {
			System.out.println("회원이 예약한 공간보기리스트 에러:" + e.getMessage());
		}
		return list;
	}
	
	public int shareTotalcount() {
		int shareTotalCount = session.selectOne("share.shareTotalgetCount");
		
		return shareTotalCount;
	}

	public List<ShareMainListVO> shareDetail(ShareVO vo) {
		List<ShareMainListVO> list = null;
		try {
			
			list = session.selectList("share.shareDetail", vo);
			
		} catch (Exception e) {
			System.out.println("회원이 예약한 공간보기리스트 에러:" + e.getMessage());
		}
		return list;
	}

	public List<ShareMainListVO> shareEdit(ShareVO vo) {
		List<ShareMainListVO> list = null;
		try {
			
			list = session.selectList("share.shareEdit", vo);
			
		} catch (Exception e) {
			System.out.println("회원이 쉐어링 등록한 페이지 보기(shareEdit) 에러:" + e.getMessage());
		}
		return list;
	}

	public int shareBookLot(BookShareVO vo) {
		int result = 0;
		try {
			
			result = session.insert("share.shareBookLot", vo);
			
		} catch (Exception e) {
			System.out.println("회원이 쉐어링 신청한 시간 값 넣기(shareBookLot) 에러:" + e.getMessage());
		}
		return result;
	}
	
	public List<ShareMainListVO> shareAllList() {
		List<ShareMainListVO> list = null;
		try {
			list = session.selectList("share.alllist");
			
		} catch (Exception e) {
			System.out.println("회원이 쉐어링 등록한 페이지 보기(shareEdit) 에러:" + e.getMessage());
		}
		return list;
	}
}
