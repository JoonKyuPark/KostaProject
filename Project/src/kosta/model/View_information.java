package kosta.model;

public class View_information 
{
	private String recruit_log_date;
	private String recruit_title;
	private String etp_name;
	
	public View_information(){}

	public View_information(String recruit_log_date, String recruit_title,
			String etp_name) {
		super();
		this.recruit_log_date = recruit_log_date;
		this.recruit_title = recruit_title;
		this.etp_name = etp_name;
	}

	public String getRecruit_log_date() {
		return recruit_log_date;
	}

	public void setRecruit_log_date(String recruit_log_date) {
		this.recruit_log_date = recruit_log_date;
	}

	public String getRecruit_title() {
		return recruit_title;
	}

	public void setRecruit_title(String recruit_title) {
		this.recruit_title = recruit_title;
	}

	public String getEtp_name() {
		return etp_name;
	}

	public void setEtp_name(String etp_name) {
		this.etp_name = etp_name;
	}
	
	
	
	
	
}
