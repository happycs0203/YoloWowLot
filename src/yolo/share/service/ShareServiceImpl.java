package yolo.share.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.share.dao.ShareDAO;
import yolo.share.dto.BookShareVO;
import yolo.share.dto.InputListVO;
import yolo.share.dto.ShareMainListVO;
import yolo.share.dto.SharePagingVO;
import yolo.share.dto.ShareVO;
@Service
public class ShareServiceImpl implements ShareService{

	@Autowired
	ShareDAO sharedao;
	
	@Override
	public int shareInput(ShareVO vo) {
		
		int result = sharedao.shareInput(vo);
		return result;
	}

	@Override
	public List<ShareMainListVO> shareList(SharePagingVO vo) {
		
		List<ShareMainListVO> list = sharedao.shareList(vo);
		
		return list;
	}

	@Override
	public List<InputListVO> inputList(String uid) {
		
		List<InputListVO> list = sharedao.shareInputList(uid);
		
		return list;
	}

	@Override
	public int shareTotalGetCount() {
		int shareTotalCount = sharedao.shareTotalcount();
		return shareTotalCount;
	}

	@Override
	public List<ShareMainListVO> shareDetail(ShareVO vo) {
		List<ShareMainListVO> list = sharedao.shareDetail(vo);
		return list;
	}

	@Override
	public List<ShareMainListVO> shareEdit(ShareVO vo) {
		List<ShareMainListVO> list = sharedao.shareEdit(vo);
		return list;
	}

	@Override
	public int ShareBookLot(BookShareVO vo) {
		int sharebooklot = sharedao.shareBookLot(vo);
		return sharebooklot;
	}

	@Override
	public List<ShareMainListVO> shareAllList() {
		List<ShareMainListVO> slist = sharedao.shareAllList();
		return slist;
	}

	
}
