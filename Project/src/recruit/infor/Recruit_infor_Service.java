package recruit.infor;

import java.util.List;

public class Recruit_infor_Service {
	private static Recruit_infor_Service riService=new Recruit_infor_Service();
	private static Recruit_infor_Dao riDao=Recruit_infor_Dao.getInstance();
	
	public static Recruit_infor_Service getInstance(){
		//riDao=Recruit_infor_Dao.getInstance();
		return riService;
	}
	
	public List<Recruit_Infor> listRecruitService(){
		System.out.println("gggg");
		return riDao.recruitList();
	}
	

}
