package yolo.share.dto;

public class ShareVO {

	/* 공간 공유 등록 */
//	CREATE TABLE SHARELOT (
//		SL_NUM VARCHAR(100) NOT NULL, /* 공유 번호 */
//		U_ID VARCHAR(20), /* 아이디 */
//		SL_TITLE VARCHAR(50), /* 공유 제목 */
//		SL_CONTENT VARCHAR(255), /* 공유 내용 */
//		SL_TIME VARCHAR(40), /* 공유 시간 */
//		SL_RSVNUM VARCHAR(100), /* 예약 번호 */
//		SL_REGDATE VARCHAR(100) /* 등록일 */
//	);
	
	
	
//	CREATE TABLE SHARELOT2 (
//			   SL_NUM VARCHAR2(100) NOT NULL, /* 공유 번호 */
//			   U_ID VARCHAR2(20), /* 아이디 */
//			   SL_TITLE VARCHAR2(50), /* 공유 제목 */
//			   SL_CONTENT VARCHAR2(255), /* 공유 내용 */
//			   SL_TIME VARCHAR2(40), /* 공유 시간 */
//			   SL_PRICE INTEGER, /* 공유 가격 */
//			   SL_REGDATE VARCHAR2(100), /* 등록일 */
//			   SL_HITS INTEGER, /* 조회수 */
//			   SL_PEOPLE INTEGER, /* 제한 인원수 */
//			   SL_ADDFEE INTEGER /* 추가요금 */
//			);
	
	private String sl_num; /* 공유 번호 */
	private String u_id; /* 아이디 */
	private String sl_title; /* 공유 제목 */
	private String sl_content; /* 공유 내용 */
	private String sl_time; /* 공유 시간 */
	private int sl_price; /* 공유 가격 */
	private String sl_regdate; /* 등록일 */
	private int sl_hits; /* 조회수 */
	private int sl_people; /* 제한 인원수 */
	private String bl_id; /* 예약번호 */
	
	/* Constructor */
	public ShareVO(String sl_num, String u_id, String sl_title, String sl_content, String sl_time, int sl_price,
			String sl_regdate, int sl_hits, int sl_people, String bl_id) {
		super();
		this.sl_num = sl_num;
		this.u_id = u_id;
		this.sl_title = sl_title;
		this.sl_content = sl_content;
		this.sl_time = sl_time;
		this.sl_price = sl_price;
		this.sl_regdate = sl_regdate;
		this.sl_hits = sl_hits;
		this.sl_people = sl_people;
		this.bl_id = bl_id;
	}
		
	public ShareVO() {
		super();
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

	public String getSl_title() {
		return sl_title;
	}

	public void setSl_title(String sl_title) {
		this.sl_title = sl_title;
	}

	public String getSl_content() {
		return sl_content;
	}

	public void setSl_content(String sl_content) {
		this.sl_content = sl_content;
	}

	public String getSl_time() {
		return sl_time;
	}

	public void setSl_time(String sl_time) {
		this.sl_time = sl_time;
	}

	public int getSl_price() {
		return sl_price;
	}

	public void setSl_price(int sl_price) {
		this.sl_price = sl_price;
	}

	public String getSl_regdate() {
		return sl_regdate;
	}

	public void setSl_regdate(String sl_regdate) {
		this.sl_regdate = sl_regdate;
	}

	public int getSl_hits() {
		return sl_hits;
	}

	public void setSl_hits(int sl_hits) {
		this.sl_hits = sl_hits;
	}

	public int getSl_people() {
		return sl_people;
	}

	public void setSl_people(int sl_people) {
		this.sl_people = sl_people;
	}

	public String getBl_id() {
		return bl_id;
	}

	public void setBl_id(String bl_id) {
		this.bl_id = bl_id;
	}

	/* Constructor end */
	/* Setter & getter */	
	
		
	/* Setter & getter end*/	
	
	
}
