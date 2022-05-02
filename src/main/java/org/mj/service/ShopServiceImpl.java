package org.mj.service;

import java.util.ArrayList;

import org.mj.mapper.ShopMapper;
import org.mj.model.ReviewDTO;
import org.mj.model.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopServiceImpl implements ShopService{

	@Autowired
	ShopMapper smapper;
	
	// shop등록을 위한 서비스
	public void ShopInsert(ShopDTO sdto) {
		smapper.ShopInsert(sdto);
	}
	
	// shopList를 가져오기위한 서비스
	public ArrayList<ShopDTO> ShopList(ShopDTO sdto){
		return smapper.ShopList(sdto);
	}
	
	// shopDetail을 위한 서비스
	public ShopDTO ShopDetail(int shopno) {
		return smapper.ShopDetail(shopno);
	}
	
	// reviewList 가져오기위한
	public ArrayList<ReviewDTO>ShopReview(ReviewDTO rdto){
		return smapper.ShopReview(rdto);
	}
}
