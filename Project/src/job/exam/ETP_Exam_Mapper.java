package job.exam;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

public interface ETP_Exam_Mapper {
	public int insertExamInfo(ETP_Exam_Info examInfo);
	public Integer countExamNo();
	public List<ETP_Exam_Info> examList(RowBounds row);
	public int countExam();
	public List<ETP_Exam_Info> calendarList(int etp_no);
}


