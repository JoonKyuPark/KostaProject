package kosta.model;

import java.sql.Date;

public class Recruit_log 
{
//	recruit_logno		number
	private int recruit_logno;
//	member_no			number
	private int member_no;
//	recruit_no			number
	private int recruit_no;
//	recruit_log_date	data
	private Date recruit_log_date;
	
	
	public Recruit_log()
	{
		
	}

	public Recruit_log(int recruit_logno, int member_no, int recruit_no,
			Date recruit_log_date) {
		super();
		this.recruit_logno = recruit_logno;
		this.member_no = member_no;
		this.recruit_no = recruit_no;
		this.recruit_log_date = recruit_log_date;
	}


	public int getRecruit_logno() {
		return recruit_logno;
	}


	public void setRecruit_logno(int recruit_logno) {
		this.recruit_logno = recruit_logno;
	}


	public int getMember_no() {
		return member_no;
	}


	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}


	public int getRecruit_no() {
		return recruit_no;
	}


	public void setRecruit_no(int recruit_no) {
		this.recruit_no = recruit_no;
	}


	public Date getRecruit_log_date() {
		return recruit_log_date;
	}


	public void setRecruit_log_date(Date recruit_log_date) {
		this.recruit_log_date = recruit_log_date;
	}
	
	
}
