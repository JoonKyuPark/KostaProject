package Etp.mypage;

public class Recruit_Infor_Service {
	private static Recruit_Infor_Dao recruit_Inform_Dao;
	private static Recruit_Infor_Service recruit_Inform_Service = new Recruit_Infor_Service();
	
	static{
		recruit_Inform_Dao = Recruit_Infor_Dao.getInstance();
	}
	
	public static Recruit_Infor_Service getInstance(){
		return recruit_Inform_Service;
	}
	
	public int insert_recruit_infor(Recruit_Infor recruit_infor){
		return recruit_Inform_Dao.recruit_insert_Infor(recruit_infor);
	}
}
