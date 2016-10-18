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
	
	public Recruit_Infor deailRecruitService(int id1){
		System.out.println("dfdfdfseeeeeeeeee"+id1);
		return riDao.deailRecruit(id1);
	}
	
	public List<Recruit_Infor> locRecruitService(String location){
		System.out.println("gggg");
		return riDao.locRecruit(location);
	}

}
