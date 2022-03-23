package yolo.footermenu.dto;

public class QnAVO {
	
//	A_NUM VARCHAR(100) NOT NULL, /* 도움말 번호 */
//	A_TYPE VARCHAR(50), /* 도움말 타입 */
//	A_TITLE VARCHAR(50), /* 도움말 제목 */
//	A_CONTENT VARCHAR(255), /* 도움말 내용 */
//	A_DATE VARCHAR(50) /* 도움말 등록날짜 */
	
	/* QnA */
	private String aNum; /* 도움말 번호 */
	private String aType; /* 도움말 타입 */
	private String aTitle; /* 도움말 제목 */
	private String aContent; /* 도움말 내용 */
	private String aDate; /* 도움말 등록날짜 */
	
	/* Constructor */
	public QnAVO(){}
	
	public QnAVO(String aNum, String aType, String aTitle, String aContent, String aDate) {
		super();
		this.aNum = aNum;
		this.aType = aType;
		this.aTitle = aTitle;
		this.aContent = aContent;
		this.aDate = aDate;
	}
	/* Constructor END */

	/* Setter & Getter */
	public String getaNum() {
		return aNum;
	}

	public void setaNum(String aNum) {
		this.aNum = aNum;
	}

	public String getaType() {
		return aType;
	}

	public void setaType(String aType) {
		this.aType = aType;
	}

	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public String getaDate() {
		return aDate;
	}

	public void setaDate(String aDate) {
		this.aDate = aDate;
	}
	/* Setter & Getter END */
	
}
