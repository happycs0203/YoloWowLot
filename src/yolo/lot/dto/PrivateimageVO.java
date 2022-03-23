package yolo.lot.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class PrivateimageVO {

	private String priimg_num;    /* 이미지 번호 */
	private String pri_num;       /* 민간시설 공간 번호 */
	private String priimg_path;   /* 이미지 위치 */
	private String priimg_name;   /* 이미지 이름 */
	
	MultipartFile file;
	
	/* Constructor */
	public PrivateimageVO(){}


	public PrivateimageVO(String priimg_num, String pri_num, String priimg_path, String priimg_name) {
		super();
		this.priimg_num = priimg_num;
		this.pri_num = pri_num;
		this.priimg_path = priimg_path;
		this.priimg_name = priimg_name;
	}

	/* End of Constructor  */
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.priimg_name = file.getOriginalFilename();
			this.priimg_path = "C:\\Users\\kosta\\git\\yolo\\Yolo\\WebContent\\upload\\lot\\";
			//this.b_fsize = file.getSize();
			
			File f = new File(priimg_path+priimg_name);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}

	/* Getters and Setters */
	public String getPriimg_num() {
		return priimg_num;
	}


	public void setPriimg_num(String priimg_num) {
		this.priimg_num = priimg_num;
	}


	public String getPri_num() {
		return pri_num;
	}


	public void setPri_num(String pri_num) {
		this.pri_num = pri_num;
	}


	public String getPriimg_path() {
		return priimg_path;
	}


	public void setPriimg_path(String priimg_path) {
		this.priimg_path = priimg_path;
	}


	public String getPriimg_name() {
		return priimg_name;
	}


	public void setPriimg_name(String priimg_name) {
		this.priimg_name = priimg_name;
	}




}
