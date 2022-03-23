package yolo.market.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.market.dao.MarketDAO;
import yolo.market.dto.MarketVO;

@Service
public class MarketServiceImpl implements MarketService {

	@Autowired
	MarketDAO dao;
	
	@Override
	public void MarketInput(MarketVO vo) {
		// TODO Auto-generated method stub
		
	}

}
