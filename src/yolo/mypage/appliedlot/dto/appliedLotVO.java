package yolo.mypage.appliedlot.dto;

public class appliedLotVO { //BooklotVO와 같은 인자값
	
	/* 예약한 공간 */
	private String bId;       /* 예약 번호 */
	private String uId;       /* 아이디 */
	private String priNum;    /* 민간시설 공간 번호 */
	private int bPeople;      /* 인원 */
	private String bDate;     /* 예약 날짜 */
	private String bTime;     /* 예약 시간 */
	private String bPay;      /* 결제 여부 */
	
	/* Constructor */
	public appliedLotVO(){}

	public appliedLotVO(String bId, String uId, String priNum, int bPeople, String bDate, String bTime, String bPay) {
		super();
		this.bId = bId;
		this.uId = uId;
		this.priNum = priNum;
		this.bPeople = bPeople;
		this.bDate = bDate;
		this.bTime = bTime;
		this.bPay = bPay;
	}
	/* End of Constructor */
 
	
	/* Getters and Setters */
	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getPriNum() {
		return priNum;
	}

	public void setPriNum(String priNum) {
		this.priNum = priNum;
	}

	public int getbPeople() {
		return bPeople;
	}

	public void setbPeople(int bPeople) {
		this.bPeople = bPeople;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getbTime() {
		return bTime;
	}

	public void setbTime(String bTime) {
		this.bTime = bTime;
	}

	public String getbPay() {
		return bPay;
	}

	public void setbPay(String bPay) {
		this.bPay = bPay;
	}

}

