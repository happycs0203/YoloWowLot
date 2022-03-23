package yolo.lot.dto;

public class BooklotVO {

	private String bl_id;    /* 예약 번호 */
	private String u_id;    /* 아이디 */
	private String pri_num; /* 민간시설 공간 번호 */
	private int bl_people;   /* 인원 */
	private String bl_date;  /* 예약 날짜 */
	private String bl_time;  /* 예약 시간 */
	private String bl_tel;
	private String bl_name;
	private String bl_pay;   /* 결제 여부 */

	public BooklotVO() {}
	
	public BooklotVO(String bl_id, String u_id, String pri_num, int bl_people, String bl_date, String bl_time,
			String bl_tel, String bl_name, String bl_pay) {
		super();
		this.bl_id = bl_id;
		this.u_id = u_id;
		this.pri_num = pri_num;
		this.bl_people = bl_people;
		this.bl_date = bl_date;
		this.bl_time = bl_time;
		this.bl_tel = bl_tel;
		this.bl_name = bl_name;
		this.bl_pay = bl_pay;
	}

	public String getBl_id() {
		return bl_id;
	}

	public void setBl_id(String bl_id) {
		this.bl_id = bl_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getPri_num() {
		return pri_num;
	}

	public void setPri_num(String pri_num) {
		this.pri_num = pri_num;
	}

	public int getBl_people() {
		return bl_people;
	}

	public void setBl_people(int bl_people) {
		this.bl_people = bl_people;
	}

	public String getBl_date() {
		return bl_date;
	}

	public void setBl_date(String bl_date) {
		this.bl_date = bl_date;
	}

	public String getBl_time() {
		return bl_time;
	}

	public void setBl_time(String bl_time) {
		this.bl_time = bl_time;
	}

	public String getBl_tel() {
		return bl_tel;
	}

	public void setBl_tel(String bl_tel) {
		this.bl_tel = bl_tel;
	}

	public String getBl_name() {
		return bl_name;
	}

	public void setBl_name(String bl_name) {
		this.bl_name = bl_name;
	}

	public String getBl_pay() {
		return bl_pay;
	}

	public void setBl_pay(String bl_pay) {
		this.bl_pay = bl_pay;
	}


}
