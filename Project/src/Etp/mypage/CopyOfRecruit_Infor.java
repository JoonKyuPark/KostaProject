package Etp.mypage;

public class CopyOfRecruit_Infor {
	private String recruit_no;
	private String recruit_title;
	private String hire_type;
	private String recruit_number;
	private String income_qualification;
	private String career_no;
	private String career_check;
	private String ac_ability_no;
	private String receive_sdate;
	private String receive_ddate;
	private String receive_way;
	private int max_pay;
	private int min_pay;
	private String resume_no;
	private String ads;
	private String etp_no;
	private String orecruit_field;
	private String orecruit_qual;
	private String orecruit_doc;
	private String recruit_position;
	private String recruit_field;
	private String recruit_day;
	private String recruit_addr;  //채용근무지역
	private String recruit_detail;  //채용상세근무지역

	public CopyOfRecruit_Infor(){}

	public String getRecruit_no() {
		return recruit_no;
	}

	public void setRecruit_no(String recruit_no) {
		this.recruit_no = recruit_no;
	}

	public String getRecruit_title() {
		return recruit_title;
	}

	public void setRecruit_title(String recruit_title) {
		this.recruit_title = recruit_title;
	}

	public String getHire_type() {
		return hire_type;
	}

	public void setHire_type(String hire_type) {
		this.hire_type = hire_type;
	}

	public String getRecruit_number() {
		return recruit_number;
	}

	public void setRecruit_number(String recruit_number) {
		this.recruit_number = recruit_number;
	}

	public String getIncome_qualification() {
		return income_qualification;
	}

	public void setIncome_qualification(String income_qualification) {
		this.income_qualification = income_qualification;
	}

	public String getCareer_no() {
		return career_no;
	}

	public void setCareer_no(String career_no) {
		this.career_no = career_no;
	}

	public String getCareer_check() {
		return career_check;
	}

	public void setCareer_check(String career_check) {
		this.career_check = career_check;
	}

	public String getAc_ability_no() {
		return ac_ability_no;
	}

	public void setAc_ability_no(String ac_ability_no) {
		this.ac_ability_no = ac_ability_no;
	}

	public String getReceive_sdate() {
		return receive_sdate;
	}

	public void setReceive_sdate(String receive_sdate) {
		this.receive_sdate = receive_sdate;
	}

	public String getReceive_ddate() {
		return receive_ddate;
	}

	public void setReceive_ddate(String receive_ddate) {
		this.receive_ddate = receive_ddate;
	}

	public String getReceive_way() {
		return receive_way;
	}

	public void setReceive_way(String receive_way) {
		this.receive_way = receive_way;
	}

	public int getMax_pay() {
		return max_pay;
	}

	public void setMax_pay(int max_pay) {
		this.max_pay = max_pay;
	}

	public int getMin_pay() {
		return min_pay;
	}

	public void setMin_pay(int min_pay) {
		this.min_pay = min_pay;
	}

	public String getResume_no() {
		return resume_no;
	}

	public void setResume_no(String resume_no) {
		this.resume_no = resume_no;
	}

	public String getAds() {
		return ads;
	}

	public void setAds(String ads) {
		this.ads = ads;
	}

	public String getEtp_no() {
		return etp_no;
	}

	public void setEtp_no(String etp_no) {
		this.etp_no = etp_no;
	}

	public String getOrecruit_field() {
		return orecruit_field;
	}

	public void setOrecruit_field(String orecruit_field) {
		this.orecruit_field = orecruit_field;
	}

	public String getOrecruit_qual() {
		return orecruit_qual;
	}

	public void setOrecruit_qual(String orecruit_qual) {
		this.orecruit_qual = orecruit_qual;
	}

	public String getOrecruit_doc() {
		return orecruit_doc;
	}

	public void setOrecruit_doc(String orecruit_doc) {
		this.orecruit_doc = orecruit_doc;
	}

	public String getRecruit_position() {
		return recruit_position;
	}

	public void setRecruit_position(String recruit_position) {
		this.recruit_position = recruit_position;
	}

	public String getRecruit_field() {
		return recruit_field;
	}

	public void setRecruit_field(String recruit_field) {
		this.recruit_field = recruit_field;
	}

	public String getRecruit_day() {
		return recruit_day;
	}

	public void setRecruit_day(String recruit_day) {
		this.recruit_day = recruit_day;
	}

	public String getRecruit_addr() {
		return recruit_addr;
	}

	public void setRecruit_addr(String recruit_addr) {
		this.recruit_addr = recruit_addr;
	}

	public String getRecruit_detail() {
		return recruit_detail;
	}

	public void setRecruit_detail(String recruit_detail) {
		this.recruit_detail = recruit_detail;
	}

	@Override
	public String toString() {
		return "Recruit_Infor [recruit_no=" + recruit_no + ", recruit_title="
				+ recruit_title + ", hire_type=" + hire_type
				+ ", recruit_number=" + recruit_number
				+ ", income_qualification=" + income_qualification
				+ ", career_no=" + career_no + ", career_check=" + career_check
				+ ", ac_ability_no=" + ac_ability_no + ", receive_sdate="
				+ receive_sdate + ", receive_ddate=" + receive_ddate
				+ ", receive_way=" + receive_way + ", max_pay=" + max_pay
				+ ", min_pay=" + min_pay + ", resume_no=" + resume_no
				+ ", ads=" + ads + ", etp_no=" + etp_no + ", orecruit_field="
				+ orecruit_field + ", orecruit_qual=" + orecruit_qual
				+ ", orecruit_doc=" + orecruit_doc + ", recruit_position="
				+ recruit_position + ", recruit_field=" + recruit_field
				+ ", recruit_day=" + recruit_day + ", recruit_addr="
				+ recruit_addr + ", recruit_detail=" + recruit_detail + "]";
	}

	public CopyOfRecruit_Infor(String recruit_no, String recruit_title,
			String hire_type, String recruit_number,
			String income_qualification, String career_no, String career_check,
			String ac_ability_no, String receive_sdate, String receive_ddate,
			String receive_way, int max_pay, int min_pay, String resume_no,
			String ads, String etp_no, String orecruit_field,
			String orecruit_qual, String orecruit_doc, String recruit_position,
			String recruit_field, String recruit_day, String recruit_addr,
			String recruit_detail) {
		super();
		this.recruit_no = recruit_no;
		this.recruit_title = recruit_title;
		this.hire_type = hire_type;
		this.recruit_number = recruit_number;
		this.income_qualification = income_qualification;
		this.career_no = career_no;
		this.career_check = career_check;
		this.ac_ability_no = ac_ability_no;
		this.receive_sdate = receive_sdate;
		this.receive_ddate = receive_ddate;
		this.receive_way = receive_way;
		this.max_pay = max_pay;
		this.min_pay = min_pay;
		this.resume_no = resume_no;
		this.ads = ads;
		this.etp_no = etp_no;
		this.orecruit_field = orecruit_field;
		this.orecruit_qual = orecruit_qual;
		this.orecruit_doc = orecruit_doc;
		this.recruit_position = recruit_position;
		this.recruit_field = recruit_field;
		this.recruit_day = recruit_day;
		this.recruit_addr = recruit_addr;
		this.recruit_detail = recruit_detail;
	}
	
	
	
}
