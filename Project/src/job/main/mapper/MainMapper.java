package job.main.mapper;

import java.util.List;

import recruit.infor.Recruit_Infor;
import job.main.Etp_infor;
import job.main.Member_info;

public interface MainMapper {

	public int Minsert(Member_info member);
	public int Einsert(Etp_infor etp);
	public List<Member_info> Mlist();
	public List<Etp_infor>Elist();
	public Member_info Msearch(String loginId);
	public int Mupdate(Member_info m);
	public int Mcount();
	public List<Recruit_Infor> Msmart(String logginid);
	public int Ecount();
	public Etp_infor Esearch(String login_id);
	
}
