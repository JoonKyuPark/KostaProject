package job.main.mapper;

import java.util.List;

import job.main.Etp_infor;
import job.main.Member_info;

public interface MainMapper {

	public int Minsert(Member_info member);
	public int Einsert(Etp_infor etp);
	public List<Member_info> Mlist();
	public List<Etp_infor>Elist();
}
