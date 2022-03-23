package yolo.lot.dto;

public class PubliclotVO {
	
	private String pub_num;      /* 공공시설 공간 번호 */
	private String pub_name;     /* 개방시설명 */
	private String pub_place;    /* 개방장소명 */
	private String pub_type;     /* 개방시설유형구분 */
	private String pub_close;    /* 휴관일 */
	private String pub_weekdayo; /* 평일운영시간 */
	private String pub_weekdaye; /* 평일운영종료시간 */
	private String pub_weekendo; /* 주말운영시간 */
	private String pub_weekende; /* 주말운영종료시간 */
	private String pub_charge;   /* 유료사용여부 */
	private int pub_time;        /* 사용기준시간 */
	private int pub_fee;         /* 사용료 */
	private int pub_people;      /* 수용가능인원 */
	private int pub_area;        /* 면적 */
	private String pub_facility; /* 부대시설 */
	private String pub_appltype; /* 신청방법 */
	private String pub_picture;  /* 시설사진정보 */
	private String pub_addr;     /* 소재지도로명주소 */
	private String pub_agency;   /* 관리기관명 */
	private String pub_dept;     /* 담당부서명 */
	private String pub_tel;      /* 사용안내전화번호 */
	private String pub_web;      /* 홈페이지 */
	private String pub_lat;      /* 위도 */
	private String pub_long;     /* 경도 */
	private int pub_hits;        /* 조회수 */
	
	/* Counstructor */
    public PubliclotVO(){}


	public PubliclotVO(String pub_num, String pub_name, String pub_place, String pub_type, String pub_close,
			String pub_weekdayo, String pub_weekdaye, String pub_weekendo, String pub_weekende, String pub_charge,
			int pub_time, int pub_fee, int pub_people, int pub_area, String pub_facility, String pub_appltype,
			String pub_picture, String pub_addr, String pub_agency, String pub_dept, String pub_tel, String pub_web,
			String pub_lat, String pub_long, int pub_hits) {
		super();
		this.pub_num = pub_num;
		this.pub_name = pub_name;
		this.pub_place = pub_place;
		this.pub_type = pub_type;
		this.pub_close = pub_close;
		this.pub_weekdayo = pub_weekdayo;
		this.pub_weekdaye = pub_weekdaye;
		this.pub_weekendo = pub_weekendo;
		this.pub_weekende = pub_weekende;
		this.pub_charge = pub_charge;
		this.pub_time = pub_time;
		this.pub_fee = pub_fee;
		this.pub_people = pub_people;
		this.pub_area = pub_area;
		this.pub_facility = pub_facility;
		this.pub_appltype = pub_appltype;
		this.pub_picture = pub_picture;
		this.pub_addr = pub_addr;
		this.pub_agency = pub_agency;
		this.pub_dept = pub_dept;
		this.pub_tel = pub_tel;
		this.pub_web = pub_web;
		this.pub_lat = pub_lat;
		this.pub_long = pub_long;
		this.pub_hits = pub_hits;
	}
	/* End of Counstructor */

    
	
	/* Getters and Setters */
	public String getPub_num() {
		return pub_num;
	}


	public void setPub_num(String pub_num) {
		this.pub_num = pub_num;
	}


	public String getPub_name() {
		return pub_name;
	}


	public void setPub_name(String pub_name) {
		this.pub_name = pub_name;
	}


	public String getPub_place() {
		return pub_place;
	}


	public void setPub_place(String pub_place) {
		this.pub_place = pub_place;
	}


	public String getPub_type() {
		return pub_type;
	}


	public void setPub_type(String pub_type) {
		this.pub_type = pub_type;
	}


	public String getPub_close() {
		return pub_close;
	}


	public void setPub_close(String pub_close) {
		this.pub_close = pub_close;
	}


	public String getPub_weekdayo() {
		return pub_weekdayo;
	}


	public void setPub_weekdayo(String pub_weekdayo) {
		this.pub_weekdayo = pub_weekdayo;
	}


	public String getPub_weekdaye() {
		return pub_weekdaye;
	}


	public void setPub_weekdaye(String pub_weekdaye) {
		this.pub_weekdaye = pub_weekdaye;
	}


	public String getPub_weekendo() {
		return pub_weekendo;
	}


	public void setPub_weekendo(String pub_weekendo) {
		this.pub_weekendo = pub_weekendo;
	}


	public String getPub_weekende() {
		return pub_weekende;
	}


	public void setPub_weekende(String pub_weekende) {
		this.pub_weekende = pub_weekende;
	}


	public String getPub_charge() {
		return pub_charge;
	}


	public void setPub_charge(String pub_charge) {
		this.pub_charge = pub_charge;
	}


	public int getPub_time() {
		return pub_time;
	}


	public void setPub_time(int pub_time) {
		this.pub_time = pub_time;
	}


	public int getPub_fee() {
		return pub_fee;
	}


	public void setPub_fee(int pub_fee) {
		this.pub_fee = pub_fee;
	}


	public int getPub_people() {
		return pub_people;
	}


	public void setPub_people(int pub_people) {
		this.pub_people = pub_people;
	}


	public int getPub_area() {
		return pub_area;
	}


	public void setPub_area(int pub_area) {
		this.pub_area = pub_area;
	}


	public String getPub_facility() {
		return pub_facility;
	}


	public void setPub_facility(String pub_facility) {
		this.pub_facility = pub_facility;
	}


	public String getPub_appltype() {
		return pub_appltype;
	}


	public void setPub_appltype(String pub_appltype) {
		this.pub_appltype = pub_appltype;
	}


	public String getPub_picture() {
		return pub_picture;
	}


	public void setPub_picture(String pub_picture) {
		this.pub_picture = pub_picture;
	}


	public String getPub_addr() {
		return pub_addr;
	}


	public void setPub_addr(String pub_addr) {
		this.pub_addr = pub_addr;
	}


	public String getPub_agency() {
		return pub_agency;
	}


	public void setPub_agency(String pub_agency) {
		this.pub_agency = pub_agency;
	}


	public String getPub_dept() {
		return pub_dept;
	}


	public void setPub_dept(String pub_dept) {
		this.pub_dept = pub_dept;
	}


	public String getPub_tel() {
		return pub_tel;
	}


	public void setPub_tel(String pub_tel) {
		this.pub_tel = pub_tel;
	}


	public String getPub_web() {
		return pub_web;
	}


	public void setPub_web(String pub_web) {
		this.pub_web = pub_web;
	}


	public String getPub_lat() {
		return pub_lat;
	}


	public void setPub_lat(String pub_lat) {
		this.pub_lat = pub_lat;
	}


	public String getPub_long() {
		return pub_long;
	}


	public void setPub_long(String pub_long) {
		this.pub_long = pub_long;
	}


	public int getPub_hits() {
		return pub_hits;
	}


	public void setPub_hits(int pub_hits) {
		this.pub_hits = pub_hits;
	}


}
