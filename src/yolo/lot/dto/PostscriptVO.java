package yolo.lot.dto;

public class PostscriptVO {

	private String ps_num;        /* 후기번호 */
	private String u_id;          /* 아이디  */
	private String pri_num;       /* 민간시설 공간 번호 */
	private String ps_content;    /* 후기내용 */
	private String ps_regdate;    /* 등록일 */
	private int ps_star;          /* 별점 */
    
	
	/* Constructor */
	PostscriptVO(){}


	public PostscriptVO(String ps_num, String u_id, String pri_num, String ps_content, String ps_regdate, int ps_star) {
		super();
		this.ps_num = ps_num;
		this.u_id = u_id;
		this.pri_num = pri_num;
		this.ps_content = ps_content;
		this.ps_regdate = ps_regdate;
		this.ps_star = ps_star;
	}


	public String getPs_num() {
		return ps_num;
	}


	public void setPs_num(String ps_num) {
		this.ps_num = ps_num;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getPri_num() {
		return pri_num;
	}


	public void setPri_num(String pri_num) {
		this.pri_num = pri_num;
	}


	public String getPs_content() {
		return ps_content;
	}


	public void setPs_content(String ps_content) {
		this.ps_content = ps_content;
	}


	public String getPs_regdate() {
		return ps_regdate;
	}


	public void setPs_regdate(String ps_regdate) {
		this.ps_regdate = ps_regdate;
	}


	public int getPs_star() {
		return ps_star;
	}


	public void setPs_star(int ps_star) {
		this.ps_star = ps_star;
	}
     
	

}