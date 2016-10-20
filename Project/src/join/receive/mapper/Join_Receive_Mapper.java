package join.receive.mapper;

import java.util.List;

import join.receive.Join_Receive;
import recruit.infor.Recruit_Infor;

public interface Join_Receive_Mapper {

	public Integer selectJoin_id();
	public int insertJoin(Join_Receive jr);
	public List<Join_Receive> listJoin();
}
