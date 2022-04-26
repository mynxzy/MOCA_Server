package org.mj.service;

import org.mj.mapper.MemberMapper;
import org.mj.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mmapper;
	
	public void MemberInsert(MemberDTO mdto) {
		mmapper.MemberInsert(mdto);
	}
	
	public MemberDTO Login(MemberDTO mdto) {
		return mmapper.Login(mdto);
	}
}
