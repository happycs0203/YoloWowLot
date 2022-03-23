package yolo.host.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class HostinfoVO {
	
	private String h_num;     /* 호스트번호 */
	private String u_id;      /* 아이디 */
	private String h_name;    /* 호스트 이름 */
	private String h_content; /* 호스트 소개 */
	
	/* Constructor */
	public HostinfoVO(){}

	public HostinfoVO(String h_num, String u_id, String h_name, String h_content) {
		super();
		this.h_num = h_num;
		this.u_id = u_id;
		this.h_name = h_name;
		this.h_content = h_content;

	}
	/* End of Constructor  */
	
	/* Getters and Setters */
	
	public String getH_num() {
		return h_num;
	}

	public void setH_num(String h_num) {
		this.h_num = h_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getH_content() {
		return h_content;
	}

	public void setH_content(String h_content) {
		this.h_content = h_content;
	}
     
}
