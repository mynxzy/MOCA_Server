package org.mj.service;

import java.util.ArrayList;

import org.mj.mapper.ReviewMapper;
import org.mj.model.ReviewDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewMapper rmapper;
	
	// 리뷰 등
	public void ReviewWrite(ReviewDTO rdto) {
		rmapper.ReviewWrite(rdto);
	}
	
	// 내 리뷰리스트
		public ArrayList<ReviewDTO> ReviewList(String u_id){
			return rmapper.ReviewList(u_id);
	}
		
	// 리뷰수정
	public ReviewDTO reviewModify(int rno) {
		return rmapper.ReviewModify(rno);
	}
	
	// 리뷰수정이 이루어지는 서비스
	public void ReviewModifySet(ReviewDTO rdto) {
		rmapper.ReviewModifySet(rdto);
	}
	
	// 리뷰 삭제
	public void ReviewRemove(int rno) {
		rmapper.ReviewRemove(rno);
	}
}
