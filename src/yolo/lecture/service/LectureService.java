package yolo.lecture.service;

import yolo.lecture.dto.LectimageVO;
import yolo.lecture.dto.LectureVO;

/*
* @인터페이스명: LectureService
*
* @version     1.0 17/06/27
* @author      이윤정
* @see         yolo.lecture.service
* @since       JDK1.8
*/
public interface LectureService {
	
	/*
	* @메소드명: lectureInput
	* @역할: LectureController에서 전달받은 값을 DAO로 전달, 결과값 리턴
	*
	* @param   LectureVO,LectimageVO:LectureController에서 전달받은 값
	* @return  int : 결과값
	*/
	public int lectureInput( LectureVO lecVO , LectimageVO lecImgVO  );
}
