package yolo.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("common/main.main")
	public String main(){
		
		return "/common/main";
	}
}
