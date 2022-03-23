package yolo.mypage.orderstatus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class OrderstatusController {
	@RequestMapping("mypage/fleaMarket/State.myinfo")
	public String View(String url){
		System.out.println("Orderstatus"+url);
		return "/mypage/fleaMarket/State";
	}
}
