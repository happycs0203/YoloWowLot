package yolo.share.service;

import java.util.List;

import yolo.share.dto.BookShareVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.SharePagingVO;
import yolo.share.dto.ShareVO;

/*
 * @인터페이스명 : ShareService
 * 
 * @version		1.0 17/07/01
 * @author		김찬종
 * @see			yolo.share.service
 * @since 		JDK1.8
 */
public interface ShareService {
	
	public int shareInput(ShareVO vo);

	public List<ShareMainListVO> shareList(SharePagingVO vo);

	public List<InputListVO> inputList(String uid);

	public int shareTotalGetCount();

	public List<ShareMainListVO> shareDetail(ShareVO vo);

	public List<ShareMainListVO> shareEdit(ShareVO vo);

	public int ShareBookLot(BookShareVO vo);

	public List<ShareMainListVO> shareAllList();
}
