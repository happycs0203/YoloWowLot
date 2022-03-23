package yolo.market.dto;

public class GoodsVO {

	private String g_num; 		 /* 상품 번호 */
	private String f_num; 		 /* 플리마켓 번호 */
	private String g_title; 	 /* 상품명 */
	private int g_price;		 /* 상품가격 */
	private String g_type;		 /* 상품종류 */
	private int g_stock;  		 /* 재고량 */
	private String g_option;  	 /* 옵션 */
	private int g_wish;  		 /* 찜수 */
	
	
	
	/* Constructor */
	public GoodsVO(){
		
	}

	public GoodsVO(String g_num, String f_num, String g_title, int g_price, String g_type, int g_stock, String g_option,
			int g_wish) {
		super();
		this.g_num = g_num;
		this.f_num = f_num;
		this.g_title = g_title;
		this.g_price = g_price;
		this.g_type = g_type;
		this.g_stock = g_stock;
		this.g_option = g_option;
		this.g_wish = g_wish;
	}
	/* Constructor end */
	
	
	
	/* Setter & Getter */
	public String getG_num() {
		return g_num;
	}



	public void setG_num(String g_num) {
		this.g_num = g_num;
	}



	public String getF_num() {
		return f_num;
	}



	public void setF_num(String f_num) {
		this.f_num = f_num;
	}



	public String getG_title() {
		return g_title;
	}



	public void setG_title(String g_title) {
		this.g_title = g_title;
	}



	public int getG_price() {
		return g_price;
	}



	public void setG_price(int g_price) {
		this.g_price = g_price;
	}



	public String getG_type() {
		return g_type;
	}



	public void setG_type(String g_type) {
		this.g_type = g_type;
	}



	public int getG_stock() {
		return g_stock;
	}



	public void setG_stock(int g_stock) {
		this.g_stock = g_stock;
	}



	public String getG_option() {
		return g_option;
	}



	public void setG_option(String g_option) {
		this.g_option = g_option;
	}



	public int getG_wish() {
		return g_wish;
	}



	public void setG_wish(int g_wish) {
		this.g_wish = g_wish;
	}


	
	
	
}
