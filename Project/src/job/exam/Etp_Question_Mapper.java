package job.exam;

import java.util.List;

public interface Etp_Question_Mapper {
	public int insertQuestion(Etp_Exam_Question question);
	public Integer countExamQuestion();
	public Integer countQuestion(int exam_no);
	public List<Integer> selectExamNo();
	public List<Etp_Exam_Question> questionList(int etp_no);
}
