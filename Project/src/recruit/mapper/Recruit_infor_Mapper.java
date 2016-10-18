package recruit.mapper;

import java.util.List;

import recruit.infor.Recruit_Infor;

public interface Recruit_infor_Mapper {

	public List<Recruit_Infor> recruitList();
	public Recruit_Infor deailRecruit(int id1);
	public List<Recruit_Infor> locRecruit(String location);


}
