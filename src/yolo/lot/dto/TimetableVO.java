package yolo.lot.dto;

public class TimetableVO {
	
	private String t_num;
	private String pri_num;
	private String t_date;
	private String t_time;
	
	
	public TimetableVO() {}
	
	public TimetableVO(String t_num, String pri_num, String t_date, String t_time) {
		super();
		this.t_num = t_num;
		this.pri_num = pri_num;
		this.t_date = t_date;
		this.t_time = t_time;
	}
	public String getT_num() {
		return t_num;
	}
	public void setT_num(String t_num) {
		this.t_num = t_num;
	}
	public String getPri_num() {
		return pri_num;
	}
	public void setPri_num(String pri_num) {
		this.pri_num = pri_num;
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
	

}
