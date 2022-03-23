package yolo.mypage.appliedclub.dto;

public class SignclubVO {
	/* 모임 리스트 */
	private String sc_num; /* 신청 번호 */
	private String c_num; /* 모임 번호 */
	private String u_id; /* 아이디 */
	private String sc_date; /* 신청 날짜 */
	
	private String cimg_num; /* 이미지 번호 */
	private String cimg_path; /* 이미지 위치 */
	private String cimg_name; /* 이미지 이름 */
	
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
	
	/* Constructor */
	public SignclubVO() {}

	public SignclubVO(String sc_num, String c_num, String u_id, String sc_date, String cimg_num, String cimg_path,
			String cimg_name, String c_type, String c_title, String c_tag, int c_people, String c_recruit,
			String c_period, String c_date, String c_place, String c_content, String c_confirm, String c_regdate) {
		super();
		this.sc_num = sc_num;
		this.c_num = c_num;
		this.u_id = u_id;
		this.sc_date = sc_date;
		this.cimg_num = cimg_num;
		this.cimg_path = cimg_path;
		this.cimg_name = cimg_name;
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

	public String getCimg_num() {
		return cimg_num;
	}

	public void setCimg_num(String cimg_num) {
		this.cimg_num = cimg_num;
	}

	public String getCimg_path() {
		return cimg_path;
	}

	public void setCimg_path(String cimg_path) {
		this.cimg_path = cimg_path;
	}

	public String getCimg_name() {
		return cimg_name;
	}

	public void setCimg_name(String cimg_name) {
		this.cimg_name = cimg_name;
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

	/* Constructor END */

	/* Setter & Getter */
	
	
	/* Setter & Getter END */
	
	
}
