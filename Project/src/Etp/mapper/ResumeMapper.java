package Etp.mapper;
import java.util.List;
import Etp.model.Etp;




public interface ResumeMapper {

	
	public List<Etp> Etpselect(int b_id);
	public int selectGno(int gid2);

}