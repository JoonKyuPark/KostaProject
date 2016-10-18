package kosta.model;

public class Dummy 
{
	//
	private String recruit_infor;
	private String memeber_infor;
	
	public Dummy(){ }

	public Dummy(String recruit_infor, String memeber_infor) 
	{
		this.recruit_infor = recruit_infor;
		this.memeber_infor = memeber_infor;
	}

	
	public String getRecruit_infor() {
		return recruit_infor;
	}

	public void setRecruit_infor(String recruit_infor) {
		this.recruit_infor = recruit_infor;
	}

	public String getMemeber_infor() {
		return memeber_infor;
	}

	public void setMemeber_infor(String memeber_infor) {
		this.memeber_infor = memeber_infor;
	}
	
	
	
	
}
