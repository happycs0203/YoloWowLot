package yolo.market.dto;

public class MarketFileVO {

	private String mfile_num; 		/* 계획서 번호 */
	private String f_num; 		 	/* 플리마켓 번호 */
	private String mfile_path;  	/* 계획서 파일위치 */
	private String mfile_name;  	/* 계획서 파일이름 */
	
	
	/* Constructor */
	public MarketFileVO(){
		
	}

	public MarketFileVO(String mfile_num, String f_num, String mfile_path, String mfile_name) {
		super();
		this.mfile_num = mfile_num;
		this.f_num = f_num;
		this.mfile_path = mfile_path;
		this.mfile_name = mfile_name;
	}
	/* Constructor end */
	
	
	
	/* Setter & Getter */
	public String getMfile_num() {
		return mfile_num;
	}


	public void setMfile_num(String mfile_num) {
		this.mfile_num = mfile_num;
	}


	public String getF_num() {
		return f_num;
	}


	public void setF_num(String f_num) {
		this.f_num = f_num;
	}


	public String getMfile_path() {
		return mfile_path;
	}


	public void setMfile_path(String mfile_path) {
		this.mfile_path = mfile_path;
	}


	public String getMfile_name() {
		return mfile_name;
	}


	public void setMfile_name(String mfile_name) {
		this.mfile_name = mfile_name;
	}
	
}
