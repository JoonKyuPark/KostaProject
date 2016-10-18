package job.resume;

public class Resume {
	  private int resume_no;
	  private String resume_title;
	  private int hope_income;
	  private String volun_field;
	  private String resume_date;
	  private int career_no;
	  private int ac_ability_no;
	  private String self_intro_cont;
	  private String self_intro_date;
	  private int career_year;
	  private String resume_img;
	private int member_no;
	
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

	public String getResume_date() {
		return resume_date;
	}

	public void setResume_date(String resume_date) {
		this.resume_date = resume_date;
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

	public String getSelf_intro_cont() {
		return self_intro_cont;
	}

	public void setSelf_intro_cont(String self_intro_cont) {
		this.self_intro_cont = self_intro_cont;
	}

	public String getSelf_intro_date() {
		return self_intro_date;
	}

	public void setSelf_intro_date(String self_intro_date) {
		this.self_intro_date = self_intro_date;
	}

	public int getCareer_year() {
		return career_year;
	}

	public void setCareer_year(int career_year) {
		this.career_year = career_year;
	}

	public String getResume_img() {
		return resume_img;
	}

	public void setResume_img(String resume_img) {
		this.resume_img = resume_img;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public Resume(int resume_no, String resume_title, int hope_income, String volun_field, String resume_date, int career_no, int ac_ability_no, String self_intro_cont, String self_intro_date,
			int career_year, String resume_img, int member_no) {
		super();
		this.resume_no = resume_no;
		this.resume_title = resume_title;
		this.hope_income = hope_income;
		this.volun_field = volun_field;
		this.resume_date = resume_date;
		this.career_no = career_no;
		this.ac_ability_no = ac_ability_no;
		this.self_intro_cont = self_intro_cont;
		this.self_intro_date = self_intro_date;
		this.career_year = career_year;
		this.resume_img = resume_img;
		this.member_no = member_no;
	}

	public Resume(){}
}