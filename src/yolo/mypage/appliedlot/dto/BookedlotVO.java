package yolo.mypage.appliedlot.dto;

public class BookedlotVO {
	private String priimg_num;    /* 이미지 번호 */
	private String priimg_path;   /* 이미지 위치 */
	private String priimg_name;   /*  이미지 이름 */
	
	private String pri_num;       /* 민간시설 공간 번호 */
	private String h_num;         /* 호스트번호 */
	private String pri_type;      /* 공간 유형 */
	private String pri_charge;    /* 유료사용여부 */
	private String pri_booktype;  /* 예약 유형 */
	private String pri_title;     /* 공간명 */
	private String pri_addr;      /* 공간 주소 */
	private String pri_tag;       /* 태그 */
	private String pri_content;   /* 공간 소개 */
	private String pri_info;      /* 공간 정보 */
	private String pri_account;   /* 계좌정보 */
	private int pri_weekprice;    /* 주중 가격 */
	private int pri_weekendprice; /* 주말 /휴일 가격 */
	private String pri_facility;  /* 편의시설 */
	private int pri_minpeople;    /* 최소 인원 */
	private int pri_maxpeople;    /* 최대 인원 */
	private String pri_weekdayo;  /* 평일운영시간 */ 
	private String pri_weekdaye;  /* 평일종료시간 */
	private String pri_weekendo;  /* 주말운영시간 */
	private String pri_weekende;  /* 주말종료시간 */
	private String pri_lat;       /* 위도 */
	private String pri_long;      /* 경도 */
	private String pri_tel;       /* 전화번호 */
	private String pri_web;       /* 홈페이지 */
	private int pri_bookcount;    /* 예약수 */
	private int pri_bookmark;     /* 관심지수 */
	private String pri_regdate;   /* 등록일 */
	private String pri_confirm;   /* 관리자승인여부 */
	
	private String bl_id;    /* 예약 번호 */
	private String u_id;    /* 아이디 */
	private int bl_people;   /* 인원 */
	private String bl_date;  /* 예약 날짜 */
	private String bl_time;  /* 예약 시간 */
	private String bl_pay;   /* 결제 여부 */

	/* Constructor */
	public BookedlotVO(){}

	public BookedlotVO(String priimg_num, String priimg_path, String priimg_name, String pri_num, String h_num,
			String pri_type, String pri_charge, String pri_booktype, String pri_title, String pri_addr, String pri_tag,
			String pri_content, String pri_info, String pri_account, int pri_weekprice, int pri_weekendprice,
			String pri_facility, int pri_minpeople, int pri_maxpeople, String pri_weekdayo, String pri_weekdaye,
			String pri_weekendo, String pri_weekende, String pri_lat, String pri_long, String pri_tel, String pri_web,
			int pri_bookcount, int pri_bookmark, String pri_regdate, String pri_confirm, String bl_id, String u_id,
			int bl_people, String bl_date, String bl_time, String bl_pay) {
		super();
		this.priimg_num = priimg_num;
		this.priimg_path = priimg_path;
		this.priimg_name = priimg_name;
		this.pri_num = pri_num;
		this.h_num = h_num;
		this.pri_type = pri_type;
		this.pri_charge = pri_charge;
		this.pri_booktype = pri_booktype;
		this.pri_title = pri_title;
		this.pri_addr = pri_addr;
		this.pri_tag = pri_tag;
		this.pri_content = pri_content;
		this.pri_info = pri_info;
		this.pri_account = pri_account;
		this.pri_weekprice = pri_weekprice;
		this.pri_weekendprice = pri_weekendprice;
		this.pri_facility = pri_facility;
		this.pri_minpeople = pri_minpeople;
		this.pri_maxpeople = pri_maxpeople;
		this.pri_weekdayo = pri_weekdayo;
		this.pri_weekdaye = pri_weekdaye;
		this.pri_weekendo = pri_weekendo;
		this.pri_weekende = pri_weekende;
		this.pri_lat = pri_lat;
		this.pri_long = pri_long;
		this.pri_tel = pri_tel;
		this.pri_web = pri_web;
		this.pri_bookcount = pri_bookcount;
		this.pri_bookmark = pri_bookmark;
		this.pri_regdate = pri_regdate;
		this.pri_confirm = pri_confirm;
		this.bl_id = bl_id;
		this.u_id = u_id;
		this.bl_people = bl_people;
		this.bl_date = bl_date;
		this.bl_time = bl_time;
		this.bl_pay = bl_pay;
	}
	
	/* End of Constructor */



	/* Getters and Setters */

	public String getPriimg_num() {
		return priimg_num;
	}

	public void setPriimg_num(String priimg_num) {
		this.priimg_num = priimg_num;
	}

	public String getPriimg_path() {
		return priimg_path;
	}

	public void setPriimg_path(String priimg_path) {
		this.priimg_path = priimg_path;
	}

	public String getPriimg_name() {
		return priimg_name;
	}

	public void setPriimg_name(String priimg_name) {
		this.priimg_name = priimg_name;
	}

	public String getPri_num() {
		return pri_num;
	}

	public void setPri_num(String pri_num) {
		this.pri_num = pri_num;
	}

	public String getH_num() {
		return h_num;
	}

	public void setH_num(String h_num) {
		this.h_num = h_num;
	}

	public String getPri_type() {
		return pri_type;
	}

	public void setPri_type(String pri_type) {
		this.pri_type = pri_type;
	}

	public String getPri_charge() {
		return pri_charge;
	}

	public void setPri_charge(String pri_charge) {
		this.pri_charge = pri_charge;
	}

	public String getPri_booktype() {
		return pri_booktype;
	}

	public void setPri_booktype(String pri_booktype) {
		this.pri_booktype = pri_booktype;
	}

	public String getPri_title() {
		return pri_title;
	}

	public void setPri_title(String pri_title) {
		this.pri_title = pri_title;
	}

	public String getPri_addr() {
		return pri_addr;
	}

	public void setPri_addr(String pri_addr) {
		this.pri_addr = pri_addr;
	}

	public String getPri_tag() {
		return pri_tag;
	}

	public void setPri_tag(String pri_tag) {
		this.pri_tag = pri_tag;
	}

	public String getPri_content() {
		return pri_content;
	}

	public void setPri_content(String pri_content) {
		this.pri_content = pri_content;
	}

	public String getPri_info() {
		return pri_info;
	}

	public void setPri_info(String pri_info) {
		this.pri_info = pri_info;
	}

	public String getPri_account() {
		return pri_account;
	}

	public void setPri_account(String pri_account) {
		this.pri_account = pri_account;
	}

	public int getPri_weekprice() {
		return pri_weekprice;
	}

	public void setPri_weekprice(int pri_weekprice) {
		this.pri_weekprice = pri_weekprice;
	}

	public int getPri_weekendprice() {
		return pri_weekendprice;
	}

	public void setPri_weekendprice(int pri_weekendprice) {
		this.pri_weekendprice = pri_weekendprice;
	}

	public String getPri_facility() {
		return pri_facility;
	}

	public void setPri_facility(String pri_facility) {
		this.pri_facility = pri_facility;
	}

	public int getPri_minpeople() {
		return pri_minpeople;
	}

	public void setPri_minpeople(int pri_minpeople) {
		this.pri_minpeople = pri_minpeople;
	}

	public int getPri_maxpeople() {
		return pri_maxpeople;
	}

	public void setPri_maxpeople(int pri_maxpeople) {
		this.pri_maxpeople = pri_maxpeople;
	}

	public String getPri_weekdayo() {
		return pri_weekdayo;
	}

	public void setPri_weekdayo(String pri_weekdayo) {
		this.pri_weekdayo = pri_weekdayo;
	}

	public String getPri_weekdaye() {
		return pri_weekdaye;
	}

	public void setPri_weekdaye(String pri_weekdaye) {
		this.pri_weekdaye = pri_weekdaye;
	}

	public String getPri_weekendo() {
		return pri_weekendo;
	}

	public void setPri_weekendo(String pri_weekendo) {
		this.pri_weekendo = pri_weekendo;
	}

	public String getPri_weekende() {
		return pri_weekende;
	}

	public void setPri_weekende(String pri_weekende) {
		this.pri_weekende = pri_weekende;
	}

	public String getPri_lat() {
		return pri_lat;
	}

	public void setPri_lat(String pri_lat) {
		this.pri_lat = pri_lat;
	}

	public String getPri_long() {
		return pri_long;
	}

	public void setPri_long(String pri_long) {
		this.pri_long = pri_long;
	}

	public String getPri_tel() {
		return pri_tel;
	}

	public void setPri_tel(String pri_tel) {
		this.pri_tel = pri_tel;
	}

	public String getPri_web() {
		return pri_web;
	}

	public void setPri_web(String pri_web) {
		this.pri_web = pri_web;
	}

	public int getPri_bookcount() {
		return pri_bookcount;
	}

	public void setPri_bookcount(int pri_bookcount) {
		this.pri_bookcount = pri_bookcount;
	}

	public int getPri_bookmark() {
		return pri_bookmark;
	}

	public void setPri_bookmark(int pri_bookmark) {
		this.pri_bookmark = pri_bookmark;
	}

	public String getPri_regdate() {
		return pri_regdate;
	}

	public void setPri_regdate(String pri_regdate) {
		this.pri_regdate = pri_regdate;
	}

	public String getPri_confirm() {
		return pri_confirm;
	}

	public void setPri_confirm(String pri_confirm) {
		this.pri_confirm = pri_confirm;
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

	public String getBl_pay() {
		return bl_pay;
	}

	public void setBl_pay(String bl_pay) {
		this.bl_pay = bl_pay;
	}



}
