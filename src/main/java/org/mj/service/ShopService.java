package org.mj.service;

import java.util.ArrayList;

import org.mj.model.ReviewDTO;
import org.mj.model.ShopDTO;

public interface ShopService {
	
	// shop 등록을 위한 서비스
	public void ShopInsert(ShopDTO sdto);
	
	// shopList 를 가져오기위한 서비스
	public ArrayList<ShopDTO> ShopList(ShopDTO sdto);
	
	// shopDetail을 위한 서비스
	public ShopDTO ShopDetail(int shopno);
	
	// reviewList 가져오기위한
	public ArrayList<ReviewDTO>ShopReview(ReviewDTO rdto);
}
