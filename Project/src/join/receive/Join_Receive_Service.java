package join.receive;

import java.util.List;

public class Join_Receive_Service {
	public static Join_Receive_Service jrService=new Join_Receive_Service();
	public static Join_Receive_Dao jrDao=Join_Receive_Dao.getInstance();
	public static Join_Receive jr=new Join_Receive();
	
	public static Join_Receive_Service getInstance(){
		return jrService;
	}
	
	public int insertJoinService(int id1){
		jr.setRecruit_no(id1);
		//jr.setJoin_receive_no(jrDao.selectJoin_id()+1);
		return jrDao.insertJoin(jr);
	}
	public List<Join_Receive> listJoinService(){
		System.out.println("____________________________");
		return jrDao.listJoin();
	}
	
}
