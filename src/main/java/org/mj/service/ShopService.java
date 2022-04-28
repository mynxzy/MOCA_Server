package org.mj.service;

import java.util.ArrayList;

import org.mj.model.ShopDTO;

public interface ShopService {
	
	// shop 등록을 위한 서비스
	public void ShopInsert(ShopDTO sdto);
	
	// shopList 를 가져오기위한 서비스
	public ArrayList<ShopDTO> ShopList(ShopDTO sdto);
}
