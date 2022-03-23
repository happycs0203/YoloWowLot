package yolo.market.dto;

public class MarketPayVO {

	private String mpay_num;  		/* 상품 결제 번호 */
	private String u_id; 			/* 아이디 */
	private String f_num;			/* 플리마켓 번호 */
	private int mpay_cost;  		/* 결제가격 */
	private String mpay_date; 		/* 결제날짜 */
	
	
	/* Constructor */
	public MarketPayVO(){
		
	}

	public MarketPayVO(String mpay_num, String u_id, String f_num, int mpay_cost, String mpay_date) {
		super();
		this.mpay_num = mpay_num;
		this.u_id = u_id;
		this.f_num = f_num;
		this.mpay_cost = mpay_cost;
		this.mpay_date = mpay_date;
	}
	/* Constructor end */
	
	
	
	/* Setter & Getter */
	public String getMpay_num() {
		return mpay_num;
	}


	public void setMpay_num(String mpay_num) {
		this.mpay_num = mpay_num;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getF_num() {
		return f_num;
	}


	public void setF_num(String f_num) {
		this.f_num = f_num;
	}


	public int getMpay_cost() {
		return mpay_cost;
	}


	public void setMpay_cost(int mpay_cost) {
		this.mpay_cost = mpay_cost;
	}


	public String getMpay_date() {
		return mpay_date;
	}


	public void setMpay_date(String mpay_date) {
		this.mpay_date = mpay_date;
	}
	

}
