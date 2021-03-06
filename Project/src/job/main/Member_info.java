package job.main;

import java.io.Serializable;

public class Member_info  implements Serializable{

	private int member_no=0;
	
private String member_name, member_img, member_birth,member_gender, member_email,member_phone,
member_telephone, member_addr_no, member_addr, member_detail_addr,member_homepage,member_id,
member_pwd, license;


public Member_info(){
	
}


public Member_info(String member_name, String member_email,
		String member_phone, String member_id, String member_pwd) {
	super();
	this.member_name = member_name;
	this.member_email = member_email;
	this.member_telephone = member_phone;
	this.member_id = member_id;
	this.member_pwd = member_pwd;
}
public Member_info(String member_name, String member_img, String member_birth,
		String member_gender, String member_email, String member_phone,
		String member_telephone, String member_addr_no, String member_addr,
		String member_detail_addr, String member_homepage, String member_id,
		String member_pwd, String license) {
	super();
	this.member_name = member_name;
	this.member_img = member_img;
	this.member_birth = member_birth;
	this.member_gender = member_gender;
	this.member_email = member_email;
	this.member_phone = member_phone;
	this.member_telephone = member_telephone;
	this.member_addr_no = member_addr_no;
	this.member_addr = member_addr;
	this.member_detail_addr = member_detail_addr;
	this.member_homepage = member_homepage;
	this.member_id = member_id;
	this.member_pwd = member_pwd;
	this.license = license;
}







public String getMember_name() {
	return member_name;
}


public void setMember_name(String member_name) {
	this.member_name = member_name;
}


public String getMember_img() {
	return member_img;
}


public void setMember_img(String member_img) {
	this.member_img = member_img;
}


public String getMember_birth() {
	return member_birth;
}


public void setMember_birth(String member_birth) {
	this.member_birth = member_birth;
}


public String getMember_gender() {
	return member_gender;
}


public void setMember_gender(String member_gender) {
	this.member_gender = member_gender;
}


public String getMember_email() {
	return member_email;
}


public void setMember_email(String member_email) {
	this.member_email = member_email;
}


public String getMember_phone() {
	return member_phone;
}


public void setMember_phone(String member_phone) {
	this.member_phone = member_phone;
}


public String getMember_telephone() {
	return member_telephone;
}


public void setMember_telephone(String member_telephone) {
	this.member_telephone = member_telephone;
}


public String getMember_addr_no() {
	return member_addr_no;
}


public void setMember_addr_no(String member_addr_no) {
	this.member_addr_no = member_addr_no;
}


public String getMember_addr() {
	return member_addr;
}


public void setMember_addr(String member_addr) {
	this.member_addr = member_addr;
}


public String getMember_detail_addr() {
	return member_detail_addr;
}


public void setMember_detail_addr(String member_detail_addr) {
	this.member_detail_addr = member_detail_addr;
}


public String getMember_homepage() {
	return member_homepage;
}


public void setMember_homepage(String member_homepage) {
	this.member_homepage = member_homepage;
}


public String getMember_id() {
	return member_id;
}


public void setMember_id(String member_id) {
	this.member_id = member_id;
}


public String getMember_pwd() {
	return member_pwd;
}


public void setMember_pwd(String member_pwd) {
	this.member_pwd = member_pwd;
}


public String getLicense() {
	return license;
}


public void setLicense(String license) {
	this.license = license;
}


public int getMember_no() {
	return member_no;
}


public void setMember_no(int member_no) {
	this.member_no = member_no;
}


@Override
public String toString() {
	return "Member_info [member_no=" + member_no + ", member_name="
			+ member_name + ", member_img=" + member_img + ", member_birth="
			+ member_birth + ", member_gender=" + member_gender
			+ ", member_email=" + member_email + ", member_phone="
			+ member_phone + ", member_telephone=" + member_telephone
			+ ", member_addr_no=" + member_addr_no + ", member_addr="
			+ member_addr + ", member_detail_addr=" + member_detail_addr
			+ ", member_homepage=" + member_homepage + ", member_id="
			+ member_id + ", member_pwd=" + member_pwd + ", license=" + license
			+ "]";
}







}
