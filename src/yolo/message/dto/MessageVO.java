package yolo.message.dto;

/* 일반 회원 쪽지 */
public class MessageVO {
//	M_NUM VARCHAR(100) NOT NULL, /* 쪽지번호 */
//	U_ID VARCHAR(20), /* 아이디 */
//	M_RECV VARCHAR(50), /* 받는사람 */
//	M_TITLE VARCHAR(50), /* 쪽지 제목 */
//	M_CONTENT VARCHAR(255), /* 쪽지 내용 */
//	M_TIME VARCHAR(50), /* 보낸 시간 */
//	M_READ VARCHAR(5) /* 읽은여부 */
	
	private String mNum; /* 쪽지번호 */
	private String uId; /* 아이디 */
	private String mRecv;/* 받는사람 */
	private String mTitle; /* 쪽지 제목 */
	private String mContent;/* 쪽지 내용 */
	private String mTime; /* 보낸 시간 */
	private String mRead;/* 읽은여부 */
	
	/* Constructor */
	public MessageVO() {
		super();
	}
	
	public MessageVO(String mNum, String uId, String mRecv, String mTitle, String mContent, String mTime,
			String mRead) {
		super();
		this.mNum = mNum;
		this.uId = uId;
		this.mRecv = mRecv;
		this.mTitle = mTitle;
		this.mContent = mContent;
		this.mTime = mTime;
		this.mRead = mRead;
	}

	/* Constructor END */

	/* Setter & Getter */
	public String getmNum() {
		return mNum;
	}
	public void setmNum(String mNum) {
		this.mNum = mNum;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getmRecv() {
		return mRecv;
	}
	public void setmRecv(String mRecv) {
		this.mRecv = mRecv;
	}
	public String getmTitle() {
		return mTitle;
	}
	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}
	public String getmContent() {
		return mContent;
	}
	public void setmContent(String mContent) {
		this.mContent = mContent;
	}
	public String getmTime() {
		return mTime;
	}
	public void setmTime(String mTime) {
		this.mTime = mTime;
	}
	public String getmRead() {
		return mRead;
	}
	public void setmRead(String mRead) {
		this.mRead = mRead;
	}
}
