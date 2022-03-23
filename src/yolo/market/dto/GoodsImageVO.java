package yolo.market.dto;

public class GoodsImageVO {
	
	private String gimg_num; 	 	/* 이미지 번호 */
	private String g_num;  			/* 상품 번호 */
	private String gimg_path; 		/* 이미지 위치 */
	private String gimg_name;  		/* 이미지 이름 */
	private String gimg_type;  		/* 이미지 종류 */
	
	
	
	/* Constructor */
	public GoodsImageVO(){
		
	}

	public GoodsImageVO(String gimg_num, String g_num, String gimg_path, String gimg_name, String gimg_type) {
		super();
		this.gimg_num = gimg_num;
		this.g_num = g_num;
		this.gimg_path = gimg_path;
		this.gimg_name = gimg_name;
		this.gimg_type = gimg_type;
	}
	/* Constructor end */ 
	
	
	
	/* Setter & Getter */
	public String getGimg_num() {
		return gimg_num;
	}



	public void setGimg_num(String gimg_num) {
		this.gimg_num = gimg_num;
	}



	public String getG_num() {
		return g_num;
	}



	public void setG_num(String g_num) {
		this.g_num = g_num;
	}



	public String getGimg_path() {
		return gimg_path;
	}



	public void setGimg_path(String gimg_path) {
		this.gimg_path = gimg_path;
	}



	public String getGimg_name() {
		return gimg_name;
	}



	public void setGimg_name(String gimg_name) {
		this.gimg_name = gimg_name;
	}



	public String getGimg_type() {
		return gimg_type;
	}



	public void setGimg_type(String gimg_type) {
		this.gimg_type = gimg_type;
	}
	

}
