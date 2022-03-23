package yolo.mypage.mymarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MymarketController {
	
	@RequestMapping("mypage/myReg/MarketMyList.myreg")
	public String marketmylist(){
		
		return "/mypage/myReg/MarketMyList";
	}

	@RequestMapping("mypage/myReg/GoodsMyList.myreg")
	public String goodsmylist(){
		
		return "/mypage/myReg/GoodsMyList";
	}
}
