package org.mj.mapper;

import java.util.ArrayList;

import org.mj.model.ShopDTO;

public interface ShopMapper {

	// shop 등록을 위한
	public void ShopInsert(ShopDTO sdto);
	
	// shopList를 가져오기위한 매퍼
	public ArrayList<ShopDTO>ShopList(ShopDTO sdto);
}
