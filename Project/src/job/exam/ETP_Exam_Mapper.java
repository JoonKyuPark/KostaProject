package job.exam;

import java.util.List;

public interface ETP_Exam_Mapper {
	public int insertExamInfo(ETP_Exam_Info examInfo);
	public Integer countExamNo();
	public List<ETP_Exam_Info> examList();
}


