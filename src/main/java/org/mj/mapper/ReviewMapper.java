package org.mj.mapper;

import java.util.ArrayList;

import org.mj.model.ReviewDTO;

public interface ReviewMapper {
	// 리뷰등록
	public void ReviewWrite(ReviewDTO rdto);
	
	// 내 리뷰리스트
	public ArrayList<ReviewDTO> ReviewList(String u_id);
	
	// 리뷰수정
	public ReviewDTO ReviewModify(int rno);
	
	// 리뷰수정이 이루어지는 매퍼
	public void ReviewModifySet(ReviewDTO rdto);
	
	// 리뷰삭제
	public void ReviewRemove(int rno);
}
