package yolo.footermenu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/*
* @클래스명: footermenuController
*
* @version     1.0 17/06/28
* @author      차인혁
* @see         yolo.footermenu.controller
* @since       JDK1.8
*/

@Controller
@RequestMapping("footermenu")
public class footermenuController {
	
	@RequestMapping("/{url}.footermenu")
	public String club(@PathVariable String url){
		System.out.println(url);
		
		return "/footermenu/" + url;
	}

}
