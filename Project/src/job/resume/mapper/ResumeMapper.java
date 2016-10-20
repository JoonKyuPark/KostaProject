package job.resume.mapper;

import java.util.List;
import java.util.Map;

import job.resume.Resume;
import job.resume.ResumeAbility;
import job.resume.ResumeAll;
import job.resume.ResumeCareer;
import job.resume.ResumeImg;




public interface ResumeMapper {
	public int insertResume(Resume resume);
	public int insertResumeAbility(ResumeAbility resumeability);
	public Integer selectAbilityNo();
	public int insertResumeCareer(ResumeCareer career);
	public Integer selectCareerNo();
	public Integer selectResumeNo();
	public List<ResumeAll> ResumeList();
	public ResumeAll ResumeDetail(int resume_no);
	public int UpdateResume(Resume resume);
	public int UpdateResumeAbility(ResumeAbility resumeAbility);
	public int UpdateResumeCareer(ResumeCareer resumeCareer);
	public int UpdateImg(ResumeImg resumeImg);
}