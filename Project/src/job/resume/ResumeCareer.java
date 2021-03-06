package job.resume;

public class ResumeCareer {
	  private int career_no;			/*경력사항 번호*/
	  private String career_year;			/*총경력 기간*/
	  private String important_ability;			/*핵심역량*/
	  private String  join_date;			/*입사일*/
	  private String retire_date;			/*퇴사일*/
	  private String career_work_state	;		/*경력 상태(퇴사/재직중)*/
	  private String career_etp_name;			/*경력회사명*/
	  private String career_field;			/*경력 직종*/
	  private String work_dept;			/*근무부서*/
	  private String work_rank;		/*경력 직급*/
	  private String work_year;			/*경력 년차*/
	  private String work_location;			/*경력 근무지역*/
	  private int work_income;			/*경력 연봉*/
	  private String responibility_field;			/*경력 담당업무*/
	  private String retire_reasion;			/*퇴사사유*/
	  
	  
	  public ResumeCareer(){}


	public ResumeCareer(int career_no, String career_year, String important_ability, String join_date, String retire_date, String career_work_state, String career_etp_name, String career_field,
			String work_dept, String work_rank, String work_year, String work_location, int work_income, String responibility_field, String retire_reasion) {
		super();
		this.career_no = career_no;
		this.career_year = career_year;
		this.important_ability = important_ability;
		this.join_date = join_date;
		this.retire_date = retire_date;
		this.career_work_state = career_work_state;
		this.career_etp_name = career_etp_name;
		this.career_field = career_field;
		this.work_dept = work_dept;
		this.work_rank = work_rank;
		this.work_year = work_year;
		this.work_location = work_location;
		this.work_income = work_income;
		this.responibility_field = responibility_field;
		this.retire_reasion = retire_reasion;
	}


	public int getCareer_no() {
		return career_no;
	}


	public void setCareer_no(int career_no) {
		this.career_no = career_no;
	}


	public String getCareer_year() {
		return career_year;
	}


	public void setCareer_year(String career_year) {
		this.career_year = career_year;
	}


	public String getImportant_ability() {
		return important_ability;
	}


	public void setImportant_ability(String important_ability) {
		this.important_ability = important_ability;
	}


	public String getJoin_date() {
		return join_date;
	}


	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}


	public String getRetire_date() {
		return retire_date;
	}


	public void setRetire_date(String retire_date) {
		this.retire_date = retire_date;
	}


	public String getCareer_work_state() {
		return career_work_state;
	}


	public void setCareer_work_state(String career_work_state) {
		this.career_work_state = career_work_state;
	}


	public String getCareer_etp_name() {
		return career_etp_name;
	}


	public void setCareer_etp_name(String career_etp_name) {
		this.career_etp_name = career_etp_name;
	}


	public String getCareer_field() {
		return career_field;
	}


	public void setCareer_field(String career_field) {
		this.career_field = career_field;
	}


	public String getWork_dept() {
		return work_dept;
	}


	public void setWork_dept(String work_dept) {
		this.work_dept = work_dept;
	}


	public String getWork_rank() {
		return work_rank;
	}


	public void setWork_rank(String work_rank) {
		this.work_rank = work_rank;
	}


	public String getWork_year() {
		return work_year;
	}


	public void setWork_year(String work_year) {
		this.work_year = work_year;
	}


	public String getWork_location() {
		return work_location;
	}


	public void setWork_location(String work_location) {
		this.work_location = work_location;
	}


	public int getWork_income() {
		return work_income;
	}


	public void setWork_income(int work_income) {
		this.work_income = work_income;
	}


	public String getResponibility_field() {
		return responibility_field;
	}


	public void setResponibility_field(String responibility_field) {
		this.responibility_field = responibility_field;
	}


	public String getRetire_reasion() {
		return retire_reasion;
	}


	public void setRetire_reasion(String retire_reasion) {
		this.retire_reasion = retire_reasion;
	}
	  
	  
}
