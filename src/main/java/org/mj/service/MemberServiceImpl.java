package org.mj.service;

import org.mj.mapper.MemberMapper;
import org.mj.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mmapper;
	
	// 회원가입하면 정보가 insert
	public void MemberInsert(MemberDTO mdto) {
		mmapper.MemberInsert(mdto);
	}
	
	// 로그인을 하는 select
	public MemberDTO Login(MemberDTO mdto) {
		return mmapper.Login(mdto);
	}
	
	// 마이페이지를 누르면 회원수정을 할수있는 select
	public MemberDTO MemberModify(String u_id) {
		return mmapper.MemberModify(u_id);
	}
	
	// 수정버튼을 눌렀을때 회원정보 update
	public void memberModify(MemberDTO mdto) {
		mmapper.memberModify(mdto);
	}
}
