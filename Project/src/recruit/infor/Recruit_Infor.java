package recruit.infor;

import java.io.Serializable;

<<<<<<< HEAD
public class Recruit_Infor implements Serializable{
=======
public class Recruit_Infor implements Serializable {
>>>>>>> branch '20161019' of https://github.com/JoonKyuPark/KostaProject

	int recruit_no;
	String recruit_title;
	String hire_type;
	int recruit_number;
	String income_qualification;
	int max_pay;
	int min_pay;
	String career_check;
	int career_period;
	String ac_ability_no;
	String receive_sdate;
	String receive_ddate;
	String receive_way;
	String ads;
	int etp_no;
	String recruit_field;
	String recruit_qual;
	String recruit_position;
	String recruit_addr;
	String recruit_detail_addr;
	String recruit_day;
	Recruit_Infor(){
		
	}
	
	
	
	
	public Recruit_Infor(int recruit_no, String recruit_title, String hire_type, int recruit_number,
			String income_qualification, int max_pay, int min_pay, String career_check, int career_period,
			String ac_ability_no, String receive_sdate, String receive_ddate, String receive_way, String ads,
			int etp_no, String recruit_field, String recruit_qual, String recruit_position, String recruit_addr,
			String recruit_detail_addr, String recruit_day) {
		super();
		this.recruit_no = recruit_no;
		this.recruit_title = recruit_title;
		this.hire_type = hire_type;
		this.recruit_number = recruit_number;
		this.income_qualification = income_qualification;
		this.max_pay = max_pay;
		this.min_pay = min_pay;
		this.career_check = career_check;
		this.career_period = career_period;
		this.ac_ability_no = ac_ability_no;
		this.receive_sdate = receive_sdate;
		this.receive_ddate = receive_ddate;
		this.receive_way = receive_way;
		this.ads = ads;
		this.etp_no = etp_no;
		this.recruit_field = recruit_field;
		this.recruit_qual = recruit_qual;
		this.recruit_position = recruit_position;
		this.recruit_addr = recruit_addr;
		this.recruit_detail_addr = recruit_detail_addr;
		this.recruit_day = recruit_day;
	}




	public int getRecruit_no() {
		return recruit_no;
	}
	public void setRecruit_no(int recruit_no) {
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
	public int getRecruit_number() {
		return recruit_number;
	}
	public void setRecruit_number(int recruit_number) {
		this.recruit_number = recruit_number;
	}
	public String getIncome_qualification() {
		return income_qualification;
	}
	public void setIncome_qualification(String income_qualification) {
		this.income_qualification = income_qualification;
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
	public String getCareer_check() {
		return career_check;
	}
	public void setCareer_check(String career_check) {
		this.career_check = career_check;
	}
	public int getCareer_period() {
		return career_period;
	}
	public void setCareer_period(int career_period) {
		this.career_period = career_period;
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
	public String getAds() {
		return ads;
	}
	public void setAds(String ads) {
		this.ads = ads;
	}
	public int getEtp_no() {
		return etp_no;
	}
	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}
	public String getRecruit_field() {
		return recruit_field;
	}
	public void setRecruit_field(String recruit_field) {
		this.recruit_field = recruit_field;
	}
	public String getRecruit_qual() {
		return recruit_qual;
	}
	public void setRecruit_qual(String recruit_qual) {
		this.recruit_qual = recruit_qual;
	}
	public String getRecruit_position() {
		return recruit_position;
	}
	public void setRecruit_position(String recruit_position) {
		this.recruit_position = recruit_position;
	}
	public String getRecruit_addr() {
		return recruit_addr;
	}
	public void setRecruit_addr(String recruit_addr) {
		this.recruit_addr = recruit_addr;
	}
	public String getRecruit_detail_addr() {
		return recruit_detail_addr;
	}
	public void setRecruit_detail_addr(String recruit_detail_addr) {
		this.recruit_detail_addr = recruit_detail_addr;
	}
	public String getRecruit_day() {
		return recruit_day;
	}
	public void setRecruit_day(String recruit_day) {
		this.recruit_day = recruit_day;
	}
	
	
}
