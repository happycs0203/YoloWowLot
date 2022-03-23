package yolo.club.dto;

public class ClubVO {
	
	/* 모임 등록 */
	private String c_num; /* 모임 번호 */
	private String u_id;/* 아이디 */
	private String c_type; /* 모임 유형 */
	private String c_title; /* 모임명 */
	private String c_tag; /* 해시태그 */
	private int c_people; /* 인원 */
	private String c_recruit; /* 모집기간 */
	private String c_period; /* 활동주기 */
	private String c_date; /* 일시 */
	private String c_place; /* 개최 장소 */
	private String c_content; /* 설명 */
	private String c_confirm; /* 승인 여부 */
	private String c_regdate; /* 등록일 */
	private String c_hits;
	private String c_bookmark; /* 즐겨찾기 */
	private String c_entry; /* 신청인원 */
	
	
	/* Constructor */
	public ClubVO() {}

	public ClubVO(String c_num, String u_id, String c_type, String c_title, String c_tag, int c_people,
			String c_recruit, String c_period, String c_date, String c_place, String c_content, String c_confirm,
			String c_regdate, String c_hits, String c_bookmark, String c_entry) {
		super();
		this.c_num = c_num;
		this.u_id = u_id;
		this.c_type = c_type;
		this.c_title = c_title;
		this.c_tag = c_tag;
		this.c_people = c_people;
		this.c_recruit = c_recruit;
		this.c_period = c_period;
		this.c_date = c_date;
		this.c_place = c_place;
		this.c_content = c_content;
		this.c_confirm = c_confirm;
		this.c_regdate = c_regdate;
		this.c_hits = c_hits;
		this.c_bookmark = c_bookmark;
		this.c_entry = c_entry;
	}

	/* Constructor END */

	/* Setter & Getter */
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

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_tag() {
		return c_tag;
	}

	public void setC_tag(String c_tag) {
		this.c_tag = c_tag;
	}

	public int getC_people() {
		return c_people;
	}

	public void setC_people(int c_people) {
		this.c_people = c_people;
	}

	public String getC_recruit() {
		return c_recruit;
	}

	public void setC_recruit(String c_recruit) {
		this.c_recruit = c_recruit;
	}

	public String getC_period() {
		return c_period;
	}

	public void setC_period(String c_period) {
		this.c_period = c_period;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getC_place() {
		return c_place;
	}

	public void setC_place(String c_place) {
		this.c_place = c_place;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_confirm() {
		return c_confirm;
	}

	public void setC_confirm(String c_confirm) {
		this.c_confirm = c_confirm;
	}

	public String getC_regdate() {
		return c_regdate;
	}

	public void setC_regdate(String c_regdate) {
		this.c_regdate = c_regdate;
	}

	public String getC_hits() {
		return c_hits;
	}

	public void setC_hits(String c_hits) {
		this.c_hits = c_hits;
	}

	public String getC_bookmark() {
		return c_bookmark;
	}

	public void setC_bookmark(String c_bookmark) {
		this.c_bookmark = c_bookmark;
	}

	public String getC_entry() {
		return c_entry;
	}

	public void setC_entry(String c_entry) {
		this.c_entry = c_entry;
	}
	
	/* Setter & Getter END */
	
	
}
