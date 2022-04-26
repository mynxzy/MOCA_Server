package org.mj.service;

import org.mj.model.MemberDTO;

public interface MemberService {
	// 회원가입을 눌렀을때 member테이블에 insert
	public void MemberInsert(MemberDTO mdto);
	
	// 로그인을 눌렀을때 member테이블에서 select
	public MemberDTO Login(MemberDTO mdto);
}
