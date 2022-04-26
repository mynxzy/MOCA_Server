package org.mj.mapper;

import org.mj.model.MemberDTO;

public interface MemberMapper {
	// 회원가입을 위한 insert
	public void MemberInsert(MemberDTO mdto);
	
	// 로그인을 위한 select
	public MemberDTO Login(MemberDTO mdto);
	
}
