package yolo.market.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import yolo.market.dto.MarketVO;
import yolo.market.service.MarketService;



/*
* @클래스명: MarketController
*
* @version     1.0 17/06/27
* @author      김명희
* @see         yolo.market.controller
* @since       JDK1.8
*/
@Controller
@RequestMapping("comMarket")
public class MarketController {
	
	/* 멤버필드 */
	@Autowired
	MarketService service;
	
	/*
	* @메소드명: fleaList
	* @역할: views/comMarket/FleaList로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/FleaList.market")
	public String fleaList(){
		
		return "/comMarket/FleaList";
	}
	
	/*
	* @메소드명: input
	* @역할: views/comMarket/1_FleaInput로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/1_FleaInput.market")
	public String input(){
		return "/comMarket/1_FleaInput";
	}
	
	/*
	* @메소드명: input2
	* @역할: views/comMarket/2_FleaInput로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/2_FleaInput.market")
	public String input2(){
		

		
		return "/comMarket/2_FleaInput";
	}
	
	/*
	* @메소드명: input3
	* @역할: views/comMarket/3_FleaGoodsInput로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/3_FleaGoodsInput.market")
	public String input3(MarketVO vo){
		service.MarketInput(vo);
		System.out.println(vo.getF_title());
		System.out.println(vo.getF_safe());
		System.out.println(vo.getF_content());
		
		return "/comMarket/3_FleaGoodsInput";
	}
	
	/*
	* @메소드명: marketDetail
	* @역할: views/comMarket/MarketDetail로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/MarketDetail.market")
	public String marketDetail(){
		return "/comMarket/MarketDetail";
	}
	
	/*
	* @메소드명: goodsDetail
	* @역할: views/comMarket/GoodsDetail로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/GoodsDetail.market")
	public String goodsDetail(){
		return "/comMarket/GoodsDetail/modal_market.modal"; 
	}
	
	/*
	* @메소드명: goodsPay
	* @역할: views/comMarket/GoodsPay로 페이지 전환
	*
	* @param   없음
	* @return  String:반환하는 경로
	*/
	@RequestMapping("/GoodsPay.market")
	public String goodsPay(){
		return "/comMarket/GoodsPay";
	}
	
	

	
	

	
	
	
}
