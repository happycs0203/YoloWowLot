package yolo.host.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class EntrepreneurVO {


	private String e_num;    /* 사업자 번호 */
	private String h_num;    /* 호스트번호 */
	private String e_type;   /* 사업자 분류 */
	private String e_title;  /* 사업자 상호명 */
	private String e_addr;   /* 사업장 주소 */
	private String e_rnum;   /* 사업자 등록번호 */
	private String e_fname;  /* 사업자 등록증 파일이름 */
	private String e_fpath;  /* 사업자 등록증 파일위치 */

	MultipartFile e_file;
	
	/* Constructor */
	public EntrepreneurVO(){}


	
	/* End of Constructor */

	public EntrepreneurVO(String e_num, String h_num, String e_type, String e_title, String e_addr, String e_rnum,
			String e_fname, String e_fpath) {
		super();
		this.e_num = e_num;
		this.h_num = h_num;
		this.e_type = e_type;
		this.e_title = e_title;
		this.e_addr = e_addr;
		this.e_rnum = e_rnum;
		this.e_fname = e_fname;
		this.e_fpath = e_fpath;
	}
	
	public MultipartFile getE_file() {
		return e_file;
	}
	public void setE_file(MultipartFile e_file) {
		this.e_file = e_file;
		
		// 업로드 파일 접근
		if(! e_file.isEmpty()){
			this.e_fname = e_file.getOriginalFilename();
			this.e_fpath = "C:\\Users\\gkack\\git\\yolo\\Yolo\\WebContent\\upload\\entrefile\\";
			//this.b_fsize = file.getSize();
			
			File f = new File(e_fpath+e_fname);
			
			try {
				e_file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}



	/* Getters and Setters */
	public String getE_num() {
		return e_num;
	}



	public void setE_num(String e_num) {
		this.e_num = e_num;
	}



	public String getH_num() {
		return h_num;
	}



	public void setH_num(String h_num) {
		this.h_num = h_num;
	}



	public String getE_type() {
		return e_type;
	}



	public void setE_type(String e_type) {
		this.e_type = e_type;
	}



	public String getE_title() {
		return e_title;
	}



	public void setE_title(String e_title) {
		this.e_title = e_title;
	}



	public String getE_addr() {
		return e_addr;
	}



	public void setE_addr(String e_addr) {
		this.e_addr = e_addr;
	}



	public String getE_rnum() {
		return e_rnum;
	}



	public void setE_rnum(String e_rnum) {
		this.e_rnum = e_rnum;
	}



	public String getE_fname() {
		return e_fname;
	}



	public void setE_fname(String e_fname) {
		this.e_fname = e_fname;
	}



	public String getE_fpath() {
		return e_fpath;
	}



	public void setE_fpath(String e_fpath) {
		this.e_fpath = e_fpath;
	}



	
	
}
