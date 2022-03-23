package yolo.club.dto;

import org.springframework.stereotype.Repository;


public class ClubPagingVO {
	private int startCount; /* 화면에 보여줄 첫번째 게시물 번호 */
	private int endCount; /* 화면에 보여줄 마지막 게시물 번호 */
	private int clubNowPage=1; /* 화면에 보여줄 페이지 번호 */
	/* Constructor */
	public ClubPagingVO(int startCount, int endCount, int clubNowPage) {
		super();
		this.startCount = startCount;
		this.endCount = endCount;
		this.clubNowPage = clubNowPage;
	}
	public ClubPagingVO() {
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
	public int getClubNowPage() {
		return clubNowPage;
	}
	public void setClubNowPage(int clubNowPage) {
		this.clubNowPage = clubNowPage;
	}
	
	/* Setter & Getter end*/
	
}
