package member.model;

import java.io.Serializable;

public class Etp implements Serializable {
	
	private String etp_name;		//기업이름
	private String member_name;	//회원이름
	private String member_img;		//회원 사진 url 경로
	private int mem_logno; //로그 번호
	private String log_date;	//로그일



	public Etp(){
		
	}



	public Etp(String etp_name, String member_name, String member_img,
			int mem_logno, String log_date) {
		super();
		this.etp_name = etp_name;
		this.member_name = member_name;
		this.member_img = member_img;
		this.mem_logno = mem_logno;
		this.log_date = log_date;
	}



	public String getEtp_name() {
		return etp_name;
	}



	public void setEtp_name(String etp_name) {
		this.etp_name = etp_name;
	}



	public String getMember_name() {
		return member_name;
	}



	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



	public String getMember_img() {
		return member_img;
	}



	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}



	public int getMem_logno() {
		return mem_logno;
	}



	public void setMem_logno(int mem_logno) {
		this.mem_logno = mem_logno;
	}



	public String getLog_date() {
		return log_date;
	}



	public void setLog_date(String log_date) {
		this.log_date = log_date;
	}


	

	
	

}
