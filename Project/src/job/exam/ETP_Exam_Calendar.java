package job.exam;

import java.io.Serializable;

public class ETP_Exam_Calendar implements Serializable{
	private int c_Year;
	private int c_Month;
	private int c_Date;
	
	public ETP_Exam_Calendar(){}
	
	public ETP_Exam_Calendar(int c_Year, int c_Month, int c_Date) {
		super();
		this.c_Year = c_Year;
		this.c_Month = c_Month;
		this.c_Date = c_Date;
	}

	public int getC_Year() {
		return c_Year;
	}

	public void setC_Year(int c_Year) {
		this.c_Year = c_Year;
	}

	public int getC_Month() {
		return c_Month;
	}

	public void setC_Month(int c_Month) {
		this.c_Month = c_Month;
	}

	public int getC_Date() {
		return c_Date;
	}

	public void setC_Date(int c_Date) {
		this.c_Date = c_Date;
	}
	
	
	
}
