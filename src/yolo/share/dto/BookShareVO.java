package yolo.share.dto;

public class BookShareVO {
	
//	CREATE TABLE BOOKSHARELOT (
//			   BSL_NUM VARCHAR2(100) NOT NULL, /* 공간공유예약 번호 */
//			   SL_NUM VARCHAR2(100), /* 공유 번호 */
//			   U_ID VARCHAR2(20), /* 아이디 */
//			   BSL_DATE VARCHAR2(50), /* 예약날짜 */
//			   BSL_TIME VARCHAR2(40), /* 예약시간 */
//			   BSL_TITLE VARCHAR2(50), /* 예약제목 */
//			   BSL_CONTENT VARCHAR2(255), /* 예약내용 */
//			   BSL_PEOPLE INTEGER, /* 인원 */
//			   BSL_CONFIRM VARCHAR2(5) /* 승인여부 */
//			);
	
	
	private String bsl_num;  /* 공간공유예약 번호 */
	private String sl_num; /* 공유 번호 */
	private String u_id; /* 아이디 */
	private String bsl_date; /* 예약날짜 */
	private String bsl_time; /* 예약시간 */
	private String bsl_title; /* 예약제목 */
	private String bsl_content; /* 예약내용 */
	private int bsl_people; /* 인원 */
	private String bsl_confirm; /* 승인여부 */
	
	/* Constructor */
	
	public BookShareVO(String bsl_num, String sl_num, String u_id, String bsl_date, String bsl_time, String bsl_title,
			String bsl_content, int bsl_people, String bsl_confirm) {
		super();
		this.bsl_num = bsl_num;
		this.sl_num = sl_num;
		this.u_id = u_id;
		this.bsl_date = bsl_date;
		this.bsl_time = bsl_time;
		this.bsl_title = bsl_title;
		this.bsl_content = bsl_content;
		this.bsl_people = bsl_people;
		this.bsl_confirm = bsl_confirm;
	}

	public BookShareVO() {
		super();
	}
	/* Constructor end*/
	/* Setter & Getter  */

	public String getBsl_num() {
		return bsl_num;
	}

	public void setBsl_num(String bsl_num) {
		this.bsl_num = bsl_num;
	}

	public String getSl_num() {
		return sl_num;
	}

	public void setSl_num(String sl_num) {
		this.sl_num = sl_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getBsl_date() {
		return bsl_date;
	}

	public void setBsl_date(String bsl_date) {
		this.bsl_date = bsl_date;
	}

	public String getBsl_time() {
		return bsl_time;
	}

	public void setBsl_time(String bsl_time) {
		this.bsl_time = bsl_time;
	}

	public String getBsl_title() {
		return bsl_title;
	}

	public void setBsl_title(String bsl_title) {
		this.bsl_title = bsl_title;
	}

	public String getBsl_content() {
		return bsl_content;
	}

	public void setBsl_content(String bsl_content) {
		this.bsl_content = bsl_content;
	}

	public int getBsl_people() {
		return bsl_people;
	}

	public void setBsl_people(int bsl_people) {
		this.bsl_people = bsl_people;
	}

	public String getBsl_confirm() {
		return bsl_confirm;
	}

	public void setBsl_confirm(String bsl_confirm) {
		this.bsl_confirm = bsl_confirm;
	}
	
	
	/* Setter & Getter  end*/
	
	
	
	
}
