package job.resume;

public class ResumeImg {
	private int resume_no;
	private String resume_img;
	
	public ResumeImg(){}

	public ResumeImg(int resume_no, String resume_img) {
		super();
		this.resume_no = resume_no;
		this.resume_img = resume_img;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public String getResume_img() {
		return resume_img;
	}

	public void setResume_img(String resume_img) {
		this.resume_img = resume_img;
	}
	
	
}
