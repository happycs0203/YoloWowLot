package yolo.lot.dto;

public class BookmarkVO {
	
	private String bm_num;		/* 북마크 고유번호 */
	private String u_id;		/* 유저id */
	private String bm_selnum;	/* 희망 공간or모임 번호 */
	private String bm_category;	/* 공간,모임 구분 카테고리 */
	
	/* Constructor */
	public BookmarkVO(){}
	
	public BookmarkVO(String bm_num, String u_id, String bm_selnum, String bm_category) {
		super();
		this.bm_num = bm_num;
		this.u_id = u_id;
		this.bm_selnum = bm_selnum;
		this.bm_category = bm_category;
	}
	/* End of Constructor */
	
	/* Getters and Setters */
	public String getBm_num() {
		return bm_num;
	}
	public void setBm_num(String bm_num) {
		this.bm_num = bm_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getBm_selnum() {
		return bm_selnum;
	}
	public void setBm_selnum(String bm_selnum) {
		this.bm_selnum = bm_selnum;
	}
	public String getBm_category() {
		return bm_category;
	}
	public void setBm_category(String bm_category) {
		this.bm_category = bm_category;
	}
	
	
	
}
