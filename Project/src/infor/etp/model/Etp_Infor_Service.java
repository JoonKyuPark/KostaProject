package infor.etp.model;

import java.util.List;

public class Etp_Infor_Service {

	public static Etp_Infor_Service eis=new Etp_Infor_Service();
	Etp_Infor_Dao eid=Etp_Infor_Dao.getInstance();
	
	public static Etp_Infor_Service getInstance(){
		return eis;
	}
	public Etp_Infor detailEtpService(int id1){
		System.out.println("&&&&&&&&&&&&&&&"+id1);
		return eid.detailEtp(id1);
	}
}
