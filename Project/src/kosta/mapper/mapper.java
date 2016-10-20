package kosta.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kosta.model.Dummy;
import kosta.model.Recruit_log;
import kosta.model.View_information;

public interface mapper
{
	public List<View_information> getList(RowBounds row ,int member_no);
	//Dummy객체 안에 기업정보, 회원번호가 존자할 겁니다.
	//그 두 정보를 가지고 JOIN을 실시하고, 필요한 정보를
	//Recruit_log객체에 넣고, 반환합니다.
	public Recruit_log combine( Dummy dummy );
	//기업번호와, 개인회원번호를 조합합니다.
	//회원의 아이디를 넘기면, 회원의 번호를 반환합니다.
	public int getMember_Number( String b_id );
	//recruit_log에 회원의 번호를 삽입합니다.
	public int  Insert_member( int member_no );
	public Integer selectlog_id();
	//checkbox로 선택된 리스트의 번호를 넣으면 
	//해당하는 리스트의 자료( 데이터베이스에서 )를 삭제합니다.
	public void removeList( int remove );



}


