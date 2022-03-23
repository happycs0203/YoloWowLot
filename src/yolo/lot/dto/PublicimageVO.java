package yolo.lot.dto;

public class PublicimageVO {
	
	private String pubimg_num;   /* 이미지 번호 */
	private String pub_num;      /* 공공시설 공간 번호 */
	private String pubimg_path;  /* 이미지 위치 */
	private String pubimg_name;  /* 이미지 이름 */
	
	/* Constructor */
	public PublicimageVO(){}

	
	public PublicimageVO(String pubimg_num, String pub_num, String pubimg_path, String pubimg_name) {
		super();
		this.pubimg_num = pubimg_num;
		this.pub_num = pub_num;
		this.pubimg_path = pubimg_path;
		this.pubimg_name = pubimg_name;
	}
	/* End of Constructor */

	
	/* Getters and Setters */
	public String getPubimg_num() {
		return pubimg_num;
	}


	public void setPubimg_num(String pubimg_num) {
		this.pubimg_num = pubimg_num;
	}


	public String getPub_num() {
		return pub_num;
	}


	public void setPub_num(String pub_num) {
		this.pub_num = pub_num;
	}


	public String getPubimg_path() {
		return pubimg_path;
	}


	public void setPubimg_path(String pubimg_path) {
		this.pubimg_path = pubimg_path;
	}


	public String getPubimg_name() {
		return pubimg_name;
	}


	public void setPubimg_name(String pubimg_name) {
		this.pubimg_name = pubimg_name;
	}



	 

}
