package yolo.lecture.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class LectimageVO {
	
	/* 세미나&강연 이미지 */
	private String limg_num; /* 이미지 번호 */
	private String l_num; 	/* 세미나 번호 */
	private String limg_path; /* 이미지 위치 */
	private String limg_name; /* 이미지 이름 */
	
	/* Constructor */
	public LectimageVO(){}

	public LectimageVO(String limg_num, String l_num, String limg_path, String limg_name) {
		super();
		this.limg_num = limg_num;
		this.l_num = l_num;
		this.limg_path = limg_path;
		this.limg_name = limg_name;
	}
	/* Constructor END */

	/* Setter & Getter */
	public String getLimg_num() {
		return limg_num;
	}

	public void setLimg_num(String limg_num) {
		this.limg_num = limg_num;
	}

	public String getL_num() {
		return l_num;
	}

	public void setL_num(String l_num) {
		this.l_num = l_num;
	}

	public String getLimg_path() {
		return limg_path;
	}

	public void setLimg_path(String limg_path) {
		this.limg_path = limg_path;
	}

	public String getLimg_name() {
		return limg_name;
	}

	public void setLimg_name(String limg_name) {
		this.limg_name = limg_name;
	}

}
