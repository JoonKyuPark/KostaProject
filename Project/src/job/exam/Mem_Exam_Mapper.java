package job.exam;

import java.util.List;

public interface Mem_Exam_Mapper {
	public List<Etp_Exam_Info> examList();
	public List<Etp_Exam_Question> questionList(int exam_no);
}
