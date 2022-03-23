package yolo.lecture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.lecture.dao.LectureDAO;
import yolo.lecture.dto.LectimageVO;
import yolo.lecture.dto.LectureVO;

@Service
public class LectureServiceImpl implements LectureService {
	
	@Autowired
	LectureDAO dao;

	@Override
	public int lectureInput(LectureVO lecVO, LectimageVO lecImgVO) {
		System.out.println( "파일이름:" + lecImgVO.getLimg_name() );
		int result = dao.lectureInsert(lecVO,lecImgVO);
		return result;
	}

}
