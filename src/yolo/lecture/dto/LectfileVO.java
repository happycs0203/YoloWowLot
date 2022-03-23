package yolo.lecture.dto;

public class LectfileVO {

	/* 세미나&강연 서류 */
	private String lfile_num; 	/* 서류 번호 */
	private String l_num; 		/* 세미나 번호 */
	private String lfile_path; 	/* 서류 위치 */
	private String lfile_name; 	/* 서류 제목 */
	
	/* Constructor */
	public LectfileVO(){}

	public LectfileVO(String lfile_num, String l_num, String lfile_path, String lfile_name) {
		super();
		this.lfile_num = lfile_num;
		this.l_num = l_num;
		this.lfile_path = lfile_path;
		this.lfile_name = lfile_name;
	}
	/* Constructor END */

	/* Setter & Getter */
	public String getLfile_num() {
		return lfile_num;
	}

	public void setLfile_num(String lfile_num) {
		this.lfile_num = lfile_num;
	}

	public String getL_num() {
		return l_num;
	}

	public void setL_num(String l_num) {
		this.l_num = l_num;
	}

	public String getLfile_path() {
		return lfile_path;
	}

	public void setLfile_path(String lfile_path) {
		this.lfile_path = lfile_path;
	}

	public String getLfile_name() {
		return lfile_name;
	}

	public void setLfile_name(String lfile_name) {
		this.lfile_name = lfile_name;
	}
	/* Setter & Getter END */
		
}
