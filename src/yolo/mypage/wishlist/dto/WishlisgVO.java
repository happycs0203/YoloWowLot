package yolo.mypage.wishlist.dto;

public class WishlisgVO {

	/* 찜목록 */
//	CREATE TABLE WISH (
//		W_NUM VARCHAR(100) NOT NULL, /* 찜번호 */
//		U_ID VARCHAR(20), /* 아이디 */
//		W_SELNUM VARCHAR(100) /* 선택번호 */
//	);
	private String w_num;  /* 찜번호 */
	private String u_id;  /* 아이디 */
	private String w_selnum;  /* 선택번호 */
	

	/* Constructor */
	public WishlisgVO(String w_num, String u_id, String w_selnum) {
		super();
		this.w_num = w_num;
		this.u_id = u_id;
		this.w_selnum = w_selnum;
	}
	
	public WishlisgVO() {
		super();
	}

	/* Constructor end*/

	/* Setter & Getter*/
	public String getW_num() {
		return w_num;
	}
	
	public void setW_num(String w_num) {
		this.w_num = w_num;
	}
	
	public String getU_id() {
		return u_id;
	}
	
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	public String getW_selnum() {
		return w_selnum;
	}
	
	public void setW_selnum(String w_selnum) {
		this.w_selnum = w_selnum;
	}
	
	/* Setter & Getter end*/
	
	
	
}
