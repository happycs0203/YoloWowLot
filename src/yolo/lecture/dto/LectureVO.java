package yolo.lecture.dto;

public class LectureVO {
	
	/* 세미나&강연 등록 */
	private String l_num; 		/* 세미나 번호 */
	private String u_id; 		/* 아이디 */
	private String l_type; 		/* 세미나 주제 */
	private String l_title; 		/* 세미나 제목 */
	private int l_people; 		/* 최대 인원 */
	private String l_period; 	/* 모집기간 */
	private String l_start; 		/* 일시 */
	private String l_content; 	/* 세미나 설명 */
	private String l_confirm; 	/* 승인여부 */
	private String l_pay; 		/* 결제여부 */
	private String l_regdate; 	/* 등록일 */
	
	/* Constructor */
	public LectureVO(){}
	
	public LectureVO(String l_num, String u_id, String l_type, String l_title, int l_people, String l_period,
			String l_start, String l_content, String l_confirm, String l_pay, String l_regdate) {
		super();
		this.l_num = l_num;
		this.u_id = u_id;
		this.l_type = l_type;
		this.l_title = l_title;
		this.l_people = l_people;
		this.l_period = l_period;
		this.l_start = l_start;
		this.l_content = l_content;
		this.l_confirm = l_confirm;
		this.l_pay = l_pay;
		this.l_regdate = l_regdate;
	}
	/* Constructor END */
	
	/* Setter & Getter */
	public String getL_num() {
		return l_num;
	}

	public void setL_num(String l_num) {
		this.l_num = l_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getL_type() {
		return l_type;
	}

	public void setL_type(String l_type) {
		this.l_type = l_type;
	}

	public String getL_title() {
		return l_title;
	}

	public void setL_title(String l_title) {
		this.l_title = l_title;
	}

	public int getL_people() {
		return l_people;
	}

	public void setL_people(int l_people) {
		this.l_people = l_people;
	}

	public String getL_period() {
		return l_period;
	}

	public void setL_period(String l_period) {
		this.l_period = l_period;
	}

	public String getL_start() {
		return l_start;
	}

	public void setL_start(String l_start) {
		this.l_start = l_start;
	}

	public String getL_content() {
		return l_content;
	}

	public void setL_content(String l_content) {
		this.l_content = l_content;
	}

	public String getL_confirm() {
		return l_confirm;
	}

	public void setL_confirm(String l_confirm) {
		this.l_confirm = l_confirm;
	}

	public String getL_pay() {
		return l_pay;
	}

	public void setL_pay(String l_pay) {
		this.l_pay = l_pay;
	}

	public String getL_regdate() {
		return l_regdate;
	}

	public void setL_regdate(String l_regdate) {
		this.l_regdate = l_regdate;
	}	
	/* Setter & Getter END */
	
}
