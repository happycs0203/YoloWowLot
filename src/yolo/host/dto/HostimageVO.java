package yolo.host.dto;

public class HostimageVO {
	
	private String himg_num;  /* 이미지 번호 */
	private String h_num;     /* 호스트번호 */
	private String himg_path; /* 이미지 위치 */
	private String himg_name; /* 이미지 이름 */

	/* Constructor */
	HostimageVO(){}


	public HostimageVO(String himg_num, String h_num, String himg_path, String himg_name) {
		super();
		this.himg_num = himg_num;
		this.h_num = h_num;
		this.himg_path = himg_path;
		this.himg_name = himg_name;
	}
	/* End of Constructor */

	/* Getters and Setters */
	public String getHimg_num() {
		return himg_num;
	}


	public void setHimg_num(String himg_num) {
		this.himg_num = himg_num;
	}


	public String getH_num() {
		return h_num;
	}


	public void setH_num(String h_num) {
		this.h_num = h_num;
	}


	public String getHimg_path() {
		return himg_path;
	}


	public void setHimg_path(String himg_path) {
		this.himg_path = himg_path;
	}


	public String getHimg_name() {
		return himg_name;
	}


	public void setHimg_name(String himg_name) {
		this.himg_name = himg_name;
	}


   
}
