package member.mapper;
import java.util.List;


import org.apache.ibatis.session.RowBounds;

import Etp.model.ETP_mem_log;
import Etp.model.Etp;




public interface ResumeMapper {
	
	public List<Etp> Etpselect(RowBounds row,int gno);
	
	public int selectGno(int gid2);
	public Integer selectlog_id();
	public int InsertEtp_log(ETP_mem_log etp);
	public int deleted(int log);
	
}

