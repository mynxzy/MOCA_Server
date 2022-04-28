package org.mj.service;

import org.mj.model.MemberDTO;

public interface MemberService {
	// 회원가입을 눌렀을때 member테이블에 insert
	public void MemberInsert(MemberDTO mdto);
	
	// 로그인을 눌렀을때 member테이블에서 select
	public MemberDTO Login(MemberDTO mdto);
	
	// 회원수정을 눌렀을때 회원정보가 select되게
	public MemberDTO MemberModify(String u_id);
	
	// 수정을 눌렀을때 회원정보 update
	public void memberModify(MemberDTO mdto);
	
	// 회원탈퇴를 눌렀을때 회원 delete
	public void MemberDelete(MemberDTO mdto);
}
