package yolo.lecture.dto;

public class LectpayVO {

	/* 세미나&강연 결제 */
	private String lpay_num; /* 강연 결제 번호 */
	private String l_num; 	/* 세미나 번호 */
	private int lpay_cost; 	/* 결제금액 */
	private String lpay_date; /* 결제날짜 */
	
	/* Constructor */
	public LectpayVO(){}
	
	public LectpayVO(String lpay_num, String l_num, int lpay_cost, String lpay_date) {
		super();
		this.lpay_num = lpay_num;
		this.l_num = l_num;
		this.lpay_cost = lpay_cost;
		this.lpay_date = lpay_date;
	}
	/* Constructor END */

	/* Setter & Getter */
	public String getLpay_num() {
		return lpay_num;
	}

	public void setLpay_num(String lpay_num) {
		this.lpay_num = lpay_num;
	}

	public String getL_num() {
		return l_num;
	}

	public void setL_num(String l_num) {
		this.l_num = l_num;
	}

	public int getLpay_cost() {
		return lpay_cost;
	}

	public void setLpay_cost(int lpay_cost) {
		this.lpay_cost = lpay_cost;
	}

	public String getLpay_date() {
		return lpay_date;
	}

	public void setLpay_date(String lpay_date) {
		this.lpay_date = lpay_date;
	}
	/* Setter & Getter END */
	

}
