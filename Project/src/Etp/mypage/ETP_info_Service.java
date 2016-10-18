package Etp.mypage;

public class ETP_info_Service {
	private static ETP_Info_Dao etp_info_dao;
	private static ETP_info_Service etp_info_service = new ETP_info_Service();
	
	static {
		etp_info_dao = ETP_Info_Dao.getInstance();
	}
	
	public static ETP_info_Service getInstance(){
		return etp_info_service;
	}
	public int insert_etp_info(ETP_Info etp_info){
		return etp_info_dao.etp_insert_info(etp_info);
	}
	
	public int update_etp_info(ETP_Info etp_info){
		return etp_info_dao.etp_update_info(etp_info);
	}
}
