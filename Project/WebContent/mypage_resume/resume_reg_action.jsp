<%@page import="job.resume.Resume_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    %>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript"></script>

<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="resume" class="job.resume.Resume">
   <jsp:setProperty property="*" name="resume"/>
</jsp:useBean>
<jsp:useBean id="resumeAbility" class="job.resume.ResumeAbility">
   <jsp:setProperty property="*" name="resumeAbility"/>
</jsp:useBean>
<jsp:useBean id="resumeCareer" class="job.resume.ResumeCareer">
   <jsp:setProperty property="*" name="resumeCareer"/>
</jsp:useBean>
<%
	request.setAttribute("resume", resume);
	request.setAttribute("resumeAbility", resumeAbility);
	request.setAttribute("resumeCareer", resumeCareer);
	String career_radio_btn = request.getParameter("career_radio_btn");
	
	Resume_Dao dao = Resume_Dao.getInstance();
	int re;
	
	re = dao.insertResumeAbility(resumeAbility);
	System.out.println("1.ability insert re ?? :" + re);
	

	re = dao.insertResumeCareer(resumeCareer);
	
	System.out.println("2.career insert re ?? :" + re);
	
	String career_year = request.getParameter("career_year");
	System.out.println("career_year :" + career_year);
	
	re = dao.insertResume(resume,request);
	System.out.println("3.resume insert re?? :" + re);
	
%>
${resume.volun_field}

</body>
</html>