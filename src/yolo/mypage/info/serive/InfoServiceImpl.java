package yolo.mypage.info.serive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.mypage.info.dao.InfoDAO;
import yolo.user.dto.UserVO;

@Service
public class InfoServiceImpl implements InfoService {
	
	@Autowired
	InfoDAO idao;
	

	@Override
	public UserVO myinfoview(UserVO vo) {
		return idao.myinfoview(vo);
	}


	@Override
	public int myinfomodify(UserVO vo) {
		int result = idao.myinfomodify(vo);
		return result;
	}

}
