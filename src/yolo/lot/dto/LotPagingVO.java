package yolo.lot.dto;

import org.springframework.stereotype.Repository;


public class LotPagingVO {
	private int startCount; /* 화면에 보여줄 첫번째 게시물 번호 */
	private int endCount; /* 화면에 보여줄 마지막 게시물 번호 */
	private int lotNowPage=1; /* 화면에 보여줄 페이지 번호 */
	
	/* Constructor */
	public LotPagingVO(int startCount, int endCount, int lotNowPage) {
		super();
		this.startCount = startCount;
		this.endCount = endCount;
		this.lotNowPage = lotNowPage;
	}
	public LotPagingVO() {
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
	public int getLotNowPage() {
		return lotNowPage;
	}
	public void setLotNowPage(int lotNowPage) {
		this.lotNowPage = lotNowPage;
	}
	
	/* Setter & Getter end*/
	
}
