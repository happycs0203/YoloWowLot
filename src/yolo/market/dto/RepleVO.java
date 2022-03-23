package yolo.market.dto;

public class RepleVO {

	private String re_num; 			/* 댓글번호 */
	private String u_id; 			/* 아이디 */
	private String g_num; 			/* 상품 번호 */
	private String re_star;			/* 별점 */
	private String re_content; 	 	/* 내용 */
	private String re_regdate; 	 	/* 등록일 */
	
	
	
	/* Constructor */	
	public RepleVO(){
		
	}

	public RepleVO(String re_num, String u_id, String g_num, String re_star, String re_content, String re_regdate) {
		super();
		this.re_num = re_num;
		this.u_id = u_id;
		this.g_num = g_num;
		this.re_star = re_star;
		this.re_content = re_content;
		this.re_regdate = re_regdate;
	}
	/* Constructor end */	
	
	
	
	/* Setter & Getter */
	public String getRe_num() {
		return re_num;
	}



	public void setRe_num(String re_num) {
		this.re_num = re_num;
	}



	public String getU_id() {
		return u_id;
	}



	public void setU_id(String u_id) {
		this.u_id = u_id;
	}



	public String getG_num() {
		return g_num;
	}



	public void setG_num(String g_num) {
		this.g_num = g_num;
	}



	public String getRe_star() {
		return re_star;
	}



	public void setRe_star(String re_star) {
		this.re_star = re_star;
	}



	public String getRe_content() {
		return re_content;
	}



	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}



	public String getRe_regdate() {
		return re_regdate;
	}



	public void setRe_regdate(String re_regdate) {
		this.re_regdate = re_regdate;
	}
	



}
