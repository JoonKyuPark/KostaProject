package recruit.clip;

import recruit.infor.Recruit_infor_Dao;
import recruit.infor.Recruit_infor_Service;

public class Recruit_Clip_Service {

	private static Recruit_Clip_Service rcService=new Recruit_Clip_Service();
	private static Recruit_Clip_Dao rcDao=Recruit_Clip_Dao.getInstance();
	
	public static Recruit_Clip_Service getInstance(){
		return rcService;
	}
	
	public int insertRecruitLikeService(int id){
		return rcDao.insertRecruitLike(id);
	}
	
}
