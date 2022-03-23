package yolo.mypage.mylecture.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage/myReg")
public class MylectureController {
	@RequestMapping("/LectureMyList.myreg")
	public String clubmylist(){
		
		return "/mypage/myReg/LectureMyList";
	}
}
