package org.mj.mapper;

import org.mj.model.MemberDTO;

public interface MemberMapper {
	// 아이디 중복체크
	public int idChk(String memberId);
	
	// 회원가입을 위한 insert
	public void MemberInsert(MemberDTO mdto);
	
	// 로그인을 위한 select
	public MemberDTO Login(MemberDTO mdto);
	
	// 회원수정을위해 값을 가져오기위한 select
	public MemberDTO MemberModify(String u_id);
	
	// 수정버튼을 누르면 회원정보 update
	public void memberModify(MemberDTO mdto);
	
	// 회원탈퇴를 눌렀을때 회원 delete
	public void MemberDelete(MemberDTO mdto);
}
