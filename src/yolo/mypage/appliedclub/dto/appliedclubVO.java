package yolo.mypage.appliedclub.dto;

public class appliedclubVO {//signClubVO와 같은 인자값
	
//	SC_NUM VARCHAR(100) NOT NULL, /* 신청 번호 */
//	C_NUM VARCHAR(100), /* 모임 번호 */
//	U_ID VARCHAR(20), /* 아이디 */
//	SC_DATE VARCHAR(50) /* 신청 날짜 */
	
	private String sc_num; /* 신청 번호 */
	private String c_num; /* 모임 번호 */
	private String u_id; /* 아이디 */
	private String sc_date; /* 신청 날짜 */
	
	/* Constructor */
	public appliedclubVO(){}

	public appliedclubVO(String sc_num, String c_num, String u_id, String sc_date) {
		super();
		this.sc_num = sc_num;
		this.c_num = c_num;
		this.u_id = u_id;
		this.sc_date = sc_date;
	}

	public String getSc_num() {
		return sc_num;
	}

	public void setSc_num(String sc_num) {
		this.sc_num = sc_num;
	}

	public String getC_num() {
		return c_num;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getSc_date() {
		return sc_date;
	}

	public void setSc_date(String sc_date) {
		this.sc_date = sc_date;
	}
	
	
}
