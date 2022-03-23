package yolo.lecture.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class LecInputFileVO {
	
	/*Input File 처리 변수*/
	private String limg_path; /* 이미지 위치 */
	private String limg_name; /* 이미지 이름 */
	private MultipartFile thumImgFile;
	
	/* Constructor */
	public LecInputFileVO(){}
	
	public LecInputFileVO(MultipartFile thumImgFile) {
		super();
		this.thumImgFile = thumImgFile;
	}
	/* Constructor END */

	/* Setter & Getter */
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

	public MultipartFile getThumImgFile() {
		return thumImgFile;
	}

	public void setThumImgFile(MultipartFile thumImgFile) {
		this.thumImgFile = thumImgFile;
		
		//업로드 파일 접근
		if( ! thumImgFile.isEmpty() ){
			this.limg_name = thumImgFile.getOriginalFilename();
			this.limg_path = "C:\\Users\\kosta\\git\\Yolo\\Yolo\\WebContent\\upload\\lecture\\" + limg_name;
			File f = new File( limg_path );
			
			try {
				thumImgFile.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	/* Setter & Getter END */
}
