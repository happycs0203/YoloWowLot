package yolo.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.lecture.dao.LectureDAO;
import yolo.lecture.dto.LecInputFileVO;
import yolo.lecture.dto.LectimageVO;
import yolo.lecture.dto.LectureVO;
import yolo.lecture.service.LectureService;

/*
* @클래스명: LectureController
*
* @version     1.0 17/06/27
* @author      이윤정
* @see         yolo.lecture.controller
* @since       JDK1.8
*/
@Controller
@RequestMapping("comLecture")
public class LectureController {
	
	/* 멤버필드 */
	@Autowired
	LectureService service;
	LectimageVO imgvo;
	
	/*
	* @메소드명: lecList
	* @역할: views/comLecture/LectureList로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/LectureList.lecture")
	public String lecList(){
		System.out.println("LectureList");
		return "/comLecture/LectureList";
	}
	
	/*
	* @메소드명: lecDetail
	* @역할: views/comLecture/LectureView로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/LectureView.lecture")
	public String lecDetail(){
		return "/comLecture/LectureView";
	}

	/*
	* @메소드명: lecInput
	* @역할: views/comLecture/LectureView로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/LectureInput.lecture")
	public String lecInput(){
		return "/comLecture/LectureInput";
	}
	
	/*
	* @메소드명: lecInputOk
	* @역할: LectureService를 호출하여 웹에서 가져온 Lecture등록값을 전달 
	*
	* @param   LectureVO:jsp form에서 가져온 값
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/LectureInputOk.lecture")
	public String lecInputOk( LectureVO lecvo, LecInputFileVO filevo){
		imgvo.setLimg_name( filevo.getLimg_name() );
		imgvo.setLimg_path( filevo.getLimg_path() );
		int result = service.lectureInput(lecvo,imgvo);
		if(result == 1){
			System.out.println("DB입력 성공");
		}else{
			System.out.println("DB입력 실패");
		}
		return "/comLecture/LectureInputOk";
	}

}
