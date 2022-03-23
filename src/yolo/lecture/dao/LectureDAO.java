package yolo.lecture.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yolo.lecture.dto.LectimageVO;
import yolo.lecture.dto.LectureVO;


/*
* @클래스명: LectureDAO
*
* @version     1.0 17/06/27
* @author      이윤정
* @see         yolo.lecture.dao
* @since       JDK1.8
*/
@Repository
public class LectureDAO {

	/* 멤버필드 */
	@Autowired
	SqlSessionTemplate session;
	
	/*
	* @메소드명: lectureInsert
	* @역할: LectureService에서 전달받은 값을 DB에 삽입
	*
	* @param   LectureVO,LectimageVO
	* @return  int: DB insert쿼리문 결과값
	*/
	public int lectureInsert( LectureVO lecVO, LectimageVO lecImgVO ){
		int result=0;
		try {
			result = session.insert("lecture.insert",lecVO);
			session.insert("lectimage.insert",lecImgVO);
		} catch (Exception e) {
			System.out.println("lectureDAO / lectureInsert 실패 : " + e.getMessage());
		}		
		return result;
	}
}
