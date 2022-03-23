package yolo.share.dto;

import org.springframework.stereotype.Repository;


public class SharePagingVO {
	private int startCount; /* 화면에 보여줄 첫번째 게시물 번호 */
	private int endCount; /* 화면에 보여줄 마지막 게시물 번호 */
	private int shareNowPage=1; /* 화면에 보여줄 페이지 번호 */
	/* Constructor */
	public SharePagingVO(int startCount, int endCount, int shareNowPage) {
		super();
		this.startCount = startCount;
		this.endCount = endCount;
		this.shareNowPage = shareNowPage;
	}
	public SharePagingVO() {
		super();
	}
	
	/* Constructor end */
	
	/* Setter & Getter */
	
	public int getStartCount() {
		return startCount;
	}
	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}
	public int getEndCount() {
		return endCount;
	}
	public void setEndCount(int endCount) {
		this.endCount = endCount;
	}
	public int getShareNowPage() {
		return shareNowPage;
	}
	public void setShareNowPage(int shareNowPage) {
		this.shareNowPage = shareNowPage;
	}
	
	/* Setter & Getter end*/
	
}
