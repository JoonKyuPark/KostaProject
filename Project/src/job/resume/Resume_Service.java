package job.resume;


public class Resume_Service {
	private static Resume_Service service = new Resume_Service();
	private static Resume_Dao dao;
	public static Resume_Service getInstance() {
		return service;
	}

	public String Resume_update(Resume resume, ResumeAbility resumeAbility, ResumeCareer resumeCareer){
		int re1=0;
		int re2 = 0;
		int re3 = 0;
		String result;
		
		System.out.println(resume);
		/*System.out.println(resumeAbility);
		System.out.println(career);*/
		
		
		System.out.println(resume.getResume_no());
		System.out.println(resume.getResume_title());
		System.out.println(resume.getSelf_intro_cont());
		
		re1 = dao.UpdateResume(resume);
		re2 = dao.UpdateResumeAbility(resumeAbility);
		re3 = dao.UpdateResumeCareer(resumeCareer);
		
		result = "";
				/*+", ii.upAbility:"+re2+", iii.upCareer:"+re3;*/
		
		return result;
	}
	
	
	
	
}
