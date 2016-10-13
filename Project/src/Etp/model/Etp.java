package Etp.model;

import java.io.Serializable;

public class Etp implements Serializable {
	
	private int member_no;		//번호
	private String member_name;	//이름
	private String member_img;		//사진 url
	private String member_birth;	//생일
	private String first_interview;


	public Etp(){
		
	}


	public Etp(int member_no, String member_name, String member_img,
			String member_birth, String first_interview) {
		super();
		this.member_no = member_no;
		this.member_name = member_name;
		this.member_img = member_img;
		this.member_birth = member_birth;
		this.first_interview = first_interview;
	}


	public int getMember_no() {
		return member_no;
	}


	public void setMember_no(int member_no) {
		this.member_no = member_no;
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


	public String getMember_birth() {
		return member_birth;
	}


	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}


	public String getFirst_interview() {
		return first_interview;
	}


	public void setFirst_interview(String first_interview) {
		this.first_interview = first_interview;
	}
	
	
	
	
	

}
