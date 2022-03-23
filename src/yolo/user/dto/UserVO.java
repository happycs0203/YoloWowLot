package yolo.user.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class UserVO {

		/* 회원정보 */
	
//	CREATE TABLE USERINFO (
//			U_ID VARCHAR(20) NOT NULL, /* 아이디 */
//			U_PASS VARCHAR(20), /* 패스워드 */
//			U_NAME VARCHAR2(50), /* 이름 */
//			U_TEL VARCHAR2(30), /* 전화번호 */
//			U_EMAIL VARCHAR2(40), /* 이메일 */
//			U_BIRTH VARCHAR(30), /* 생년월일 */
//			U_ADDR VARCHAR2(255), /* 주소 */
//			U_IPATH VARCHAR(255), /* 회원 이미지 위치 */
//			U_INAME VARCHAR(100) /* 회원 이미지 이름 */
//		);
	private String u_id;  /* 아이디 */
	private String u_pass; /* 패스워드 */
	private String u_name;  /* 이름 */
	private String u_tel;  /* 전화번호 */
	private String u_email;  /* 이메일 */
	private String u_birth;  /* 생년월일 */
	private String u_addr;  /* 주소 */
	private String u_ipath;  /* 회원 이미지 위치 */
	private String u_iname;  /* 회원 이미지 이름 */
	
	MultipartFile file;
	
	/* Constructor */
	public UserVO(String u_id, String u_pass, String u_name, String u_tel, String u_email, String u_birth,
			String u_addr, String u_ipath, String u_iname) {
		super();
		this.u_id = u_id;
		this.u_pass = u_pass;
		this.u_name = u_name;
		this.u_tel = u_tel;
		this.u_email = u_email;
		this.u_birth = u_birth;
		this.u_addr = u_addr;
		this.u_ipath = u_ipath;
		this.u_iname = u_iname;
	}
	
	public UserVO(){}
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.u_iname = file.getOriginalFilename();
			this.u_ipath = "C:\\Users\\kosta\\git\\yolo\\Yolo\\WebContent\\upload\\user\\";
			//this.u_ipath = "C:\\Users\\kosta\\Desktop\\image\\";
			//this.b_fsize = file.getSize();
			
			File f = new File(u_ipath+u_iname);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}

	/* Constructor end*/

	/* Setter & Getter*/
	public String getU_id() {
		return u_id;
	}
	
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	public String getU_pass() {
		return u_pass;
	}
	
	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}
	
	public String getU_name() {
		return u_name;
	}
	
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	
	public String getU_tel() {
		return u_tel;
	}
	
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	
	public String getU_email() {
		return u_email;
	}
	
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	
	public String getU_birth() {
		return u_birth;
	}
	
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}
	
	public String getU_addr() {
		return u_addr;
	}
	
	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}
	
	public String getU_ipath() {
		return u_ipath;
	}
	
	public void setU_ipath(String u_ipath) {
		this.u_ipath = u_ipath;
	}
	
	public String getU_iname() {
		return u_iname;
	}
	
	public void setU_iname(String u_iname) {
		this.u_iname = u_iname;
	}

	/* Setter & Getter End*/
	
}
