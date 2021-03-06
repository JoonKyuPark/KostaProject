<%@page import="java.util.List"%>
<%@page import="job.resume.ResumeAll"%>
<%@page import="job.resume.Resume_Dao"%>
<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript"></script>
<link href="../css/resume.css" rel="stylesheet" type="text/css" />
<%
	int resume_no = Integer.parseInt(request.getParameter("seq"));
	System.out.println(resume_no);
	Resume_Dao dao = Resume_Dao.getInstance();
	
	ResumeAll resumeAll = dao.ResumeDetail(resume_no);
	
	request.setAttribute("re", resumeAll);
	
%>
<title>Insert title here</title>
</head>
<body>
<div id="container" class="col-md-12">
		<div class="left_aside col-md-2">
			<ul class="aside_ul">
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
			</ul>	
		</div>
		
		<div class="content col-md-8">
			<form class="resume_form form-horizontal col-md-12" action="resume_reg_action.jsp" method="post">
				<div class="form-group col-md-12">
					<br> <br> <br> <br> <br> <br> <label for="resume_title_input" class="glyphicon glyphicon-pencil col-md-2 control-label">제목</label>
					<div class="col-md-10">
						<h5>${re.resume_title}</h5>
					</div>
					<br> <br> <br> <label for="resume_income_input" class="col-md-2 control-label glyphicon glyphicon-usd">희망연봉</label>
					<div class="col-md-10">
						<h5>${re.hope_income}</h5>
					</div>
					<br> <br> <br>



					<!-- resume_volun_field_form 지원분야 체크박스~~~~~~ -->

					<label class="resume_volun_field_label col-md-2 control-label">지원분야</label>
					<div class="resume_volun_field_form col-md-10">
						<h5>${re.volun_field}</h5>
					</div>
					<!-- ~~~resume_volun_field_form 지원분야 체크박스 -->
	

					<br> <br> <br> 
					
					<!-- 경력사항div 시작-->
					<!-- <label for="career_radio_btn_new" class="col-md-2 control-label">경력사항</label>
					<div id="career_radio" class="col-md-10 form-inline">
						
						<input type="radio" value="new" name="career_radio_btn" checked="checked" id="career_radio_btn_new">신입 &nbsp;&nbsp; 
						<input type="radio" value="old" name="career_radio_btn" id="career_radio_btn_old">경력
					</div> -->
					
					
					
					
					<c:choose >
						<c:when test="${re.career_etp_name==null}">
						</c:when>
						<c:otherwise>
						<div id="career_wrapper">
						<div id="career" class="form-inline career">
							<br> 
							<span class="career-border col-md-12"></span> <br> 
							<label for="resume_career_etp_name_input" class="resume_career_etp_name_label col-md-2 control-label">회사명</label>
							<div class="resume_career_etp_name_div col-md-4">
								<h5>${re.career_etp_name}</h5>
							</div>
							<label for="resume_carrer_work_state_label" class="col-md-2 control-label" >재직여부</label>
							<div class="form-inline col-md-4">
									<h5>${re.career_work_state}</h5>
							</div>
							<br> <br> <br> 
							<label for="reportrange" class="resume_career_join_date_label col-md-2 control-label glyphicon glyphicon-calendar">입사·퇴사일</label>
							<div class="col-md-4 form-inline reportrange" style="background: #fff; padding-top: 5px" onclick="cb()">
								<h5>${re.join_date} ~ ${re.retire_date}</h5>
							</div>
							<label for="reportrange" class="resume_carrer_work_year_label col-md-2 control-label"> 경력기간</label>
							<div class="col-md-4">
								<h5>${re.work_year}</h5>
							</div>

							<br> <br> <br> 
							<label for="resume_career_field_input" class="col-md-2 control-label">경력 직종</label>
							<div class="resume_career_field_div col-md-4">
								<h5>${re.career_field}</h5>
							</div>
							<label for="resume_work_dept_input" class="col-md-2 control-label">근무부서</label>
							<div class="resume_work_dept_div col-md-4">
								<h5>${re.work_dept}</h5>
							</div>
							
							
							<br> <br> <label for="resume_work_rank_input" class="col-md-2 control-label">직급</label>
							<div class="resume_work_rank_div col-md-4">
								<h5>${re.work_rank}</h5>
							</div>
							<label for="resume_responibility_field_input" class="col-md-2 control-label">핵심역량</label>
							<div class="resume_responibility_field_div col-md-4">
								<h5>${re.important_ability}</h5>
							</div>
							
							
							<br> <br> 
							<label for="resume_retire_reasion_input" class="col-md-2 control-label">퇴사사유</label>
							<div class="resume_retire_reasion_div col-md-4">
								<h5>${re.retire_reasion}</h5>
							</div>
							<label for="resume_work_location_input" class="col-md-2 control-label">근무지역</label>
							<div class="resume_work_location_div col-md-4">
								<h5>${re.work_location}</h5>
							</div>
							
							
							<br> <br> 
							<label for="resume_work_income_input" class="col-md-2 control-label">경력연봉</label>
							<div class="resume_work_income_div col-md-4">
								<h5>${re.work_income}만원</h5>
							</div>
							
							<label for="resume_responibility_field_input" class="col-md-2 control-label">경력업무</label>
							<div class="resume_responibility_field_div col-md-4">
								 <h5>${re.responibility_field}</h5>
							</div>
							
						</div>	<!-- ~~~career div -->
				
						
						<div class="resume_career_year_result_div col-md-12">
						<label for="resume_career_year_input" class="col-md-2 control-label">총 경력</label>
						<div class="resume_career_year_div col-md-10">
							<h5>${re.career_year}</h5>
						</div>
						</div>

						<!-- <h5 id="career_add_btn btn" onclick="career_add_btn_fn();" class="btn-info btn col-md-12">경력 추가</h5> -->
						
						<span class="career-border col-md-12"></span> <br> 
					</div>		<!-- career_wrapper 경력사항모음 -->
						</c:otherwise>
					</c:choose>
					

					<br> <br> <br> <br> <br>

					<div class="form-inline">  <!-- 학력사항~~~ -->
						<label for="monthpicker" class="col-md-2 control-label glyphicon glyphicon-calendar">입학연월</label>
						<div class="resume_school_name_div col-md-4">
							 <h5>${re.enter_date}</h5>
						</div>
						<label for="monthpicker" class="col-md-2 control-label glyphicon glyphicon-calendar">졸업연월</label>
						<div class="resume_school_name_div col-md-4">
							<h5>${re.graduation_date}</h5>
						</div>
					</div>
					<br> <br>

					<div class="form-horizontal">
						<label for="resume_school_name_input" class="col-md-2 control-label">학교명</label>
						<div class="resume_school_name_div col-md-4">
							<h5>${re.school_name}</h5>
						</div>


						<label for="resume_major" class="col-md-2 control-label">학점</label>
						<div class="resume_school_name_div col-md-4">
							<h5>${re.grade}</h5>
						</div>
					</div>
					<br> <br>
					<div class="form-horizontal">
						<label for="resume_major" class="col-md-2 control-label">전공1</label>
						<div class="resume_school_name_div col-md-4">
							<h5>${re.major_1}</h5>
						</div>
						<label for="resume_major" class="col-md-2 control-label">전공2</label>
						<div class="resume_school_name_div col-md-4">
							<h5>${re.major_2}</h5>
						</div>
					</div>
					<br> <br>
					<div id="license_wrapper" class="col-md-12">
						<div class="license_div">
								<div class="license">
									
									
									
									
								</div>
						</div>
							<!-- <h5 id="license_add_btn btn" onclick="" class="btn-info btn col-md-12">자격증추가</h5> -->
					</div>

					<div class="form-horizontal col-md-12">
						<label for="resume_self_intro_cont" class="col-md-12 control-label" style="text-align: left">자기소개</label>
						<textarea class="form-control col-md-12" id="resume_self_intro_cont" rows="5" name="self_intro_cont">${re.self_intro_cont}</textarea>
					</div>
				</div><!-- form-group -->



				<button class="resume_detail_return_btn col-md-12 btn btn-primary">돌아가기</button>
				<br><br><br><br><br><br>
			</form>
			
			<!-- ~~resume_form -->



		
		
		
	
		</div>
		
		<div class="right_aside col-md-2">
		
		
		</div>
		
		
		
		
		
		
			
	
	
	
	
</div>

</body>
</html>