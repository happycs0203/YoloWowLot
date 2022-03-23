package yolo.share.dto;

public class ShareTimeVO {
	/* 공간공유 타임테이블 */
//	CREATE TABLE TIMETABLE3 (
//	   T_NUM VARCHAR2(100) NOT NULL, /* 예약한번호 */
//	   SL_NUM VARCHAR2(100), /* 공유 번호 */
//	   T_DATE VARCHAR2(50), /* 예약날짜 */
//	   T_TIME VARCHAR2(200) /* 예약시간 */
//	);
	
	private String t_num; /* 예약한번호 */
	private String sl_num; /* 공유 번호 */
	private String t_date; /* 예약날짜 */
	private String t_time; /* 예약시간 */
	
	/* Constructor */
	public ShareTimeVO(String t_num, String sl_num, String t_date, String t_time) {
		super();
		this.t_num = t_num;
		this.sl_num = sl_num;
		this.t_date = t_date;
		this.t_time = t_time;
	}


	public ShareTimeVO() {
		super();
	}

	/* Constructor end */
	
	/* Setter & Getter */		
	public String getT_num() {
		return t_num;
	}


	public void setT_num(String t_num) {
		this.t_num = t_num;
	}


	public String getSl_num() {
		return sl_num;
	}


	public void setSl_num(String sl_num) {
		this.sl_num = sl_num;
	}


	public String getT_date() {
		return t_date;
	}


	public void setT_date(String t_date) {
		this.t_date = t_date;
	}


	public String getT_time() {
		return t_time;
	}


	public void setT_time(String t_time) {
		this.t_time = t_time;
	}
	
	/* Setter & Getter end*/
	
}
