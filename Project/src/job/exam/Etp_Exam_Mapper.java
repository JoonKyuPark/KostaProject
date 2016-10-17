package job.exam;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

public interface Etp_Exam_Mapper {
	public int insertExamInfo(Etp_Exam_Info examInfo);
	public Integer countExamNo();
	public List<Etp_Exam_Info> examList(RowBounds row, int etp_no);
	public int countExam();
	public List<Etp_Exam_Info> calendarList(int etp_no);
	public Etp_Exam_Info selectExam(int exam_no);
	public int updateExam(Etp_Exam_Info examInfo);
}


