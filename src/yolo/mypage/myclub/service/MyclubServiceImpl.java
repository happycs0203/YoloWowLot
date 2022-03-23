package yolo.mypage.myclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.club.dto.ClubListVO;
import yolo.mypage.myclub.dao.MyclubDAO;

@Service
public class MyclubServiceImpl implements MyclubService {

	@Autowired
	MyclubDAO myclubdao;

	@Override
	public List<ClubListVO> myclubList(String uid) {
		System.out.println("List<ClubListVO> 타는 중");
		List<ClubListVO> list = myclubdao.myclubList(uid);
		System.out.println(list.size());
		return list;
	}

	@Override
	public ClubListVO cdetail(ClubListVO clublistVO) {
		return myclubdao.cdetail(clublistVO);
	}

	@Override
	public int myclubDelete(ClubListVO clublistVO) {
		return myclubdao.myclubDelete(clublistVO);
	}
	
}
