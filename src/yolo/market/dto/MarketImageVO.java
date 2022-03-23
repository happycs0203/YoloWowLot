package yolo.market.dto;

public class MarketImageVO {
	
	/* market image */
	private String mimg_num; 	  /* 이미지 번호 */
	private String f_num; 		  /* 플리마켓 번호 */
	private String fimg_path;	  /* 이미지 위치 */
	private String fimg_name; 	  /* 이미지 이름 */
	

	
	/* Constructor */
	public MarketImageVO(){
		
	}

	public MarketImageVO(String mimg_num, String f_num, String fimg_path, String fimg_name) {
		super();
		this.mimg_num = mimg_num;
		this.f_num = f_num;
		this.fimg_path = fimg_path;
		this.fimg_name = fimg_name;
	}
	/* Constructor end */
	

	
	/* Setter & Getter */
	public String getMimg_num() {
		return mimg_num;
	}



	public void setMimg_num(String mimg_num) {
		this.mimg_num = mimg_num;
	}



	public String getF_num() {
		return f_num;
	}



	public void setF_num(String f_num) {
		this.f_num = f_num;
	}



	public String getFimg_path() {
		return fimg_path;
	}



	public void setFimg_path(String fimg_path) {
		this.fimg_path = fimg_path;
	}



	public String getFimg_name() {
		return fimg_name;
	}



	public void setFimg_name(String fimg_name) {
		this.fimg_name = fimg_name;
	}
	
	

	
}
