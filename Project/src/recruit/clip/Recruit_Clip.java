package recruit.clip;

public class Recruit_Clip {
	
	int recruit_clip_no;
	String recruit_clip_name;
	int recruit_no;
	int member_no;
	
	Recruit_Clip(){
		
	}
	
	
	public Recruit_Clip(int recruit_clip_no, String recruit_clip_name, int recruit_no, int member_no) {
		super();
		this.recruit_clip_no = recruit_clip_no;
		this.recruit_clip_name = recruit_clip_name;
		this.recruit_no = recruit_no;
		this.member_no = member_no;
	}


	public int getRecruit_clip_no() {
		return recruit_clip_no;
	}
	public void setRecruit_clip_no(int recruit_clip_no) {
		this.recruit_clip_no = recruit_clip_no;
	}
	public String getRecruit_clip_name() {
		return recruit_clip_name;
	}
	public void setRecruit_clip_name(String recruit_clip_name) {
		this.recruit_clip_name = recruit_clip_name;
	}
	public int getRecruit_no() {
		return recruit_no;
	}
	public void setRecruit_no(int recruit_no) {
		this.recruit_no = recruit_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	
	
	
}
