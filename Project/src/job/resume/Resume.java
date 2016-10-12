package job.resume;

public class Resume {
	private int resume_no;
	private String resume_title;
	private int hope_income;
	private String volun_field;
	private int career_no;
	private String self_intro_cont;
	private int member_no;
	private int ac_ability_no;
	
	public Resume(){}

	public Resume(int resume_no, String resume_title, int hope_income,
			String volun_field, int career_no, int ac_ability_no) {
		super();
		this.resume_no = resume_no;
		this.resume_title = resume_title;
		this.hope_income = hope_income;
		this.volun_field = volun_field;
		this.career_no = career_no;
		this.ac_ability_no = ac_ability_no;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public String getResume_title() {
		return resume_title;
	}

	public void setResume_title(String resume_title) {
		this.resume_title = resume_title;
	}

	public int getHope_income() {
		return hope_income;
	}

	public void setHope_income(int hope_income) {
		this.hope_income = hope_income;
	}

	public String getVolun_field() {
		return volun_field;
	}

	public void setVolun_field(String volun_field) {
		this.volun_field = volun_field;
	}

	public int getCareer_no() {
		return career_no;
	}

	public void setCareer_no(int career_no) {
		this.career_no = career_no;
	}

	public int getAc_ability_no() {
		return ac_ability_no;
	}

	public void setAc_ability_no(int ac_ability_no) {
		this.ac_ability_no = ac_ability_no;
	}
	
	
	
}
