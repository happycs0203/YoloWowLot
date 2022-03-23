package yolo.market.dto;

public class MarketVO {
	
	private String f_num; 		 	/* 플리마켓 번호 */
	private String u_id; 		 	/* 아이디 */
	private String f_title; 		/* 마켓이름 */
	private String f_content;  		/* 마켓설명 */
	private String f_safe; 			/* 안전거래여부 */
	private String f_regdate;		/* 등록일 */
	private int f_hits;				/* 조회수 */
		
	
	
	/* Constructor */
	public MarketVO(){
		
	}

	public MarketVO(String f_num, String u_id, String f_title, String f_content, String f_safe, String f_regdate,
			int f_hits) {
		super();
		this.f_num = f_num;
		this.u_id = u_id;
		this.f_title = f_title;
		this.f_content = f_content;
		this.f_safe = f_safe;
		this.f_regdate = f_regdate;
		this.f_hits = f_hits;
	}
	/* Constructor end */
	
	
	
	/* Setter & Getter */
	public String getF_num() {
		return f_num;
	}



	public void setF_num(String f_num) {
		this.f_num = f_num;
	}



	public String getU_id() {
		return u_id;
	}



	public void setU_id(String u_id) {
		this.u_id = u_id;
	}



	public String getF_title() {
		return f_title;
	}



	public void setF_title(String f_title) {
		this.f_title = f_title;
	}



	public String getF_content() {
		return f_content;
	}



	public void setF_content(String f_content) {
		this.f_content = f_content;
	}



	public String getF_safe() {
		return f_safe;
	}



	public void setF_safe(String f_safe) {
		this.f_safe = f_safe;
	}



	public String getF_regdate() {
		return f_regdate;
	}



	public void setF_regdate(String f_regdate) {
		this.f_regdate = f_regdate;
	}



	public int getF_hits() {
		return f_hits;
	}



	public void setF_hits(int f_hits) {
		this.f_hits = f_hits;
	}
		

	
}
