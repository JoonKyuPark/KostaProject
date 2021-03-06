package job.resume;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import job.resume.mapper.ResumeMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Resume_Dao {
	private static Resume_Dao dao = new Resume_Dao();

	public static Resume_Dao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new SqlSessionFactoryBuilder().build(input);
	}

	public int insertResume(Resume resume,HttpServletRequest request) throws Exception {
		int re = 0;
		Integer abilityNo=0;
		Integer careerNo = 0;
		Integer resumeNo = 0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		
		
		
		
		
		String uploadPath = request.getRealPath("resume_img");
		   int size = 20 * 1024 * 1024 ; //20메가

		   MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
		   
		  
		   //파일업로드
		   if(multi.getFilesystemName("resume_img") != null){
			   String resume_img = multi.getFilesystemName("resume_img");
			   resume.setResume_img(resume_img);
			   
			   //썸네읾 이미지(jpg gif) aaa.gif->aaa_small.gif
			   String pattern =resume_img.substring(resume_img.lastIndexOf(".")+1); // gif
			   String headName = resume_img.substring(0,resume_img.lastIndexOf(".")); // aaa
			   
			   
			   //원본파일 이미지 => File객체화
			   String imagePath = uploadPath + "\\" + resume_img;
			   File src = new File(imagePath);
			   
			   
			   //썸네일 이미지 객체화
			   String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern;
			   File dest = new File(thumImagePath);
			   
			   //썸네일이미지 생성
			   if(pattern.equals("jpg") || pattern.equals("gif")){
				   ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			   }
			   
			   
			   
			   
		   }else{
			   resume.setResume_img("");
		   }
		
		
		
		
		
		
		
		
		
		
		
		try {
			abilityNo = (sqlSession.getMapper(ResumeMapper.class).selectAbilityNo());
			resume.setAc_ability_no(abilityNo);
			careerNo = (sqlSession.getMapper(ResumeMapper.class).selectCareerNo());
			
			System.out.println("다오 캐리어 no??"+resume.getCareer_no());
			resume.setCareer_no(careerNo);
			System.out.println("다오 캐리어 no??"+resume.getCareer_no());
			
			System.out.println("1");
			
			
			System.out.println("2");
			if ((sqlSession.getMapper(ResumeMapper.class).selectResumeNo())==null){
				resumeNo = 1;
				System.out.println("3");
			}
			else {
				resumeNo = (sqlSession.getMapper(ResumeMapper.class).selectResumeNo()+1);
				System.out.println("4");
			}
			
			System.out.println("5");
			resume.setResume_no(resumeNo);
			
			System.out.println("6");
			
			
			re = sqlSession.getMapper(ResumeMapper.class).insertResume(resume);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		System.out.println(resume.getVolun_field());
		return re;
	}

	public int insertResumeAbility(ResumeAbility ability) {
		int re = 0;
		Integer abilityNo=0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			abilityNo = (sqlSession.getMapper(ResumeMapper.class).selectAbilityNo());
			if (abilityNo==null)abilityNo = 0;
			ability.setAc_ability_no(abilityNo+1);
			re = sqlSession.getMapper(ResumeMapper.class).insertResumeAbility(ability);

			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public int selectAbilityNo() {
		int select;
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		select = sqlsession.getMapper(ResumeMapper.class).selectAbilityNo();

		return select;
	}
	
	
	
	public int insertResumeCareer(ResumeCareer career) {
		int re = 0;
		Integer careerNo=0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		System.out.println("@@@"+career.getCareer_work_state());
		try {
			careerNo = (sqlSession.getMapper(ResumeMapper.class).selectCareerNo());
			if (careerNo==null)careerNo = 0;
			career.setCareer_no(careerNo+1);
			re = sqlSession.getMapper(ResumeMapper.class).insertResumeCareer(career);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	
	public List<ResumeAll>ResumeList(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<ResumeAll> list = sqlSession.getMapper(ResumeMapper.class).ResumeList();
		return list;
	}
	
	public ResumeAll ResumeDetail(int resume_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		ResumeAll resumeAll = sqlSession.getMapper(ResumeMapper.class).ResumeDetail(resume_no);
		return resumeAll;
	}
	
	
	public int UpdateResume(Resume resume){
		int re = 0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(ResumeMapper.class).UpdateResume(resume);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (re>0) sqlSession.commit();
			else sqlSession.rollback();
			
			sqlSession.close();
		}
		return re;
	}
	
	
	public int UpdateResumeAbility(ResumeAbility resumeAbility){
		int re = 0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(ResumeMapper.class).UpdateResumeAbility(resumeAbility);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (re>0) sqlSession.commit();
			else sqlSession.rollback();
			
			sqlSession.close();
		}
		return re;
	}
	
	
	public int UpdateResumeCareer(ResumeCareer resumeCareer){
		int re = 0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(ResumeMapper.class).UpdateResumeCareer(resumeCareer);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (re>0) sqlSession.commit();
			else sqlSession.rollback();
			
			sqlSession.close();
		}
		return re;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
