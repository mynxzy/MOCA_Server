package org.mj.service;

import java.util.ArrayList;

import org.mj.model.ReviewDTO;

public interface ReviewService {
	
	// 리뷰등록
	public void ReviewWrite(ReviewDTO rdto);
	
	// 내 리뷰리스트
	public ArrayList<ReviewDTO> ReviewList(String u_id);
	
	// 리뷰 수정
	public ReviewDTO reviewModify(int rno);
	
	// 리뷰수정이 이루어지는 서비스
	public void ReviewModifySet(ReviewDTO rdto);
	
	// 리뷰 삭제
	public void ReviewRemove(int rno);
}
