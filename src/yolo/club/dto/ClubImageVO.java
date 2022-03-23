package yolo.club.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ClubImageVO {
//	CIMG_NUM VARCHAR(100) NOT NULL, /* 이미지 번호 */
//	C_NUM VARCHAR(100), /* 모임 번호 */
//	CIMG_PATH VARCHAR(255), /* 이미지 위치 */
//	CIMG_NAME VARCHAR(100) /* 이미지 이름 */
	
	private String cimg_num; /* 이미지 번호 */
	private String c_num; /* 모임 번호 */
	private String cimg_path; /* 이미지 위치 */
	private String cimg_name; /* 이미지 이름 */
	
	MultipartFile file;	/* ClubInput.jsp에 파일첨부시 name="file"과 동일한 변수명 */
	
	/* Constructor */
	public ClubImageVO(){}
	
	/* Constructor END */

	/* Setter & Getter */
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(! file.isEmpty()){
			this.cimg_name = file.getOriginalFilename();
			
			this.cimg_path = "C:\\Users\\kosta\\git\\yolo\\Yolo\\WebContent\\upload\\club\\";
			File f = new File(cimg_path+cimg_name);
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
	}

	public String getCimg_num() {
		return cimg_num;
	}

	public void setCimg_num(String cimg_num) {
		this.cimg_num = cimg_num;
	}

	public String getC_num() {
		return c_num;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public String getCimg_path() {
		return cimg_path;
	}

	public void setCimg_path(String cimg_path) {
		this.cimg_path = cimg_path;
	}

	public String getCimg_name() {
		return cimg_name;
	}

	public void setCimg_name(String cimg_name) {
		this.cimg_name = cimg_name;
	}

}
