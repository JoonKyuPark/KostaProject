package kosta.mapper;

import java.util.List;

import kosta.model.Recruit_log;

public interface mapper
{
	public List<Recruit_log> getList();
	//기업번호와, 개인회원번호를 조합합니다.
	//
	//회원의 아이디를 넘기면, 회원의 번호를 반환합니다.
	public int getMember_Number( String b_id );
}


