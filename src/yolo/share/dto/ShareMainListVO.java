package yolo.share.dto;

public class ShareMainListVO {
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
	
	/*
	 * 예약 공간 이미지 테이블 컬럼
	 */
	private String priimg_num;    /* 이미지 번호 */
	private String priimg_path;   /* 이미지 위치 */
	private String priimg_name;   /*  이미지 이름 */
	
	/*
	 * 민간시설 공간
	 */
	private String pri_num;       /* 민간시설 공간 번호 */
	private String pri_title;     /* 공간명 */
	private String pri_addr;      /* 공간 주소 */
	private int pri_weekprice;		/* 공간 주중가격 */
	private                                                                         int pri_weekendprice;	/* 공간 주말가격 */
	private String pri_lat;			/* 공간 위도 */
	private String pri_long;		/* 공간 경도 */
	
	/*
	 * 공간 예약 테이블 booklot
	 */
	private String bl_date;
	
	
	/*
	 * 회원정보
	 */
	private String u_ipath;			/* 회원 이미지 위치 */
	private String u_iname;			/* 회원 이미지 이름 */
	
	/* Constructor */
	public ShareMainListVO(String sl_num, String u_id, String sl_title, String sl_content, String sl_time, int sl_price,
			String sl_regdate, int sl_hits, int sl_people, String bl_id, String priimg_num, String priimg_path,
			String priimg_name, String pri_num, String pri_title, String pri_addr, int pri_weekprice,
			int pri_weekendprice, String pri_lat, String pri_long, String bl_date, String u_ipath, String u_iname) {
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
		this.priimg_num = priimg_num;
		this.priimg_path = priimg_path;
		this.priimg_name = priimg_name;
		this.pri_num = pri_num;
		this.pri_title = pri_title;
		this.pri_addr = pri_addr;
		this.pri_weekprice = pri_weekprice;
		this.pri_weekendprice = pri_weekendprice;
		this.pri_lat = pri_lat;
		this.pri_long = pri_long;
		this.bl_date = bl_date;
		this.u_ipath = u_ipath;
		this.u_iname = u_iname;
	}

	public ShareMainListVO() {
		super();
	}

	
	/* End of Constructor */
	
	/* Getters and Setters */
	
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

	public String getBl_date() {
		return bl_date;
	}

	public void setBl_date(String bl_date) {
		this.bl_date = bl_date;
	}

	public String getU_ipath() {
		return u_ipath;
	}

	public void setU_ipath(String u_ipath) {
		this.u_ipath = u_ipath;
	}

	public String getU_iname() {
		return u_iname;
	}

	public void setU_iname(String u_iname) {
		this.u_iname = u_iname;
	}

	/* Getters and Setters end*/
	
}
