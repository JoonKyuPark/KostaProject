package job.resume;

public class ResumeAbility {
	  private int ac_ability_no;		/*학력사항 번호*/
	  private String enter_date;		/*입학연월*/
	  private String graduation_date;		/*졸업연월*/
	  private String school_name;			/*학교명*/
	  private String major_1; 		/*전공1*/
	  private String major_2; 		/*전공2*/
	  private String grade;		/*학점*/
	  
	  
	  public ResumeAbility(){}
	  
	public int getAc_ability_no() {
		return ac_ability_no;
	}

	public void setAc_ability_no(int ac_ability_no) {
		this.ac_ability_no = ac_ability_no;
	}

	public String getEnter_date() {
		return enter_date;
	}

	public void setEnter_date(String enter_date) {
		this.enter_date = enter_date;
	}

	public String getGraduation_date() {
		return graduation_date;
	}

	public void setGraduation_date(String graduation_date) {
		this.graduation_date = graduation_date;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getMajor_1() {
		return major_1;
	}

	public void setMajor_1(String major_1) {
		this.major_1 = major_1;
	}

	public String getMajor_2() {
		return major_2;
	}

	public void setMajor_2(String major_2) {
		this.major_2 = major_2;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public ResumeAbility(int ac_ability_no, String enter_date, String graduation_date, String school_name, String major_1, String major_2, String grade) {
		super();
		this.ac_ability_no = ac_ability_no;
		this.enter_date = enter_date;
		this.graduation_date = graduation_date;
		this.school_name = school_name;
		this.major_1 = major_1;
		this.major_2 = major_2;
		this.grade = grade;
	}
}
