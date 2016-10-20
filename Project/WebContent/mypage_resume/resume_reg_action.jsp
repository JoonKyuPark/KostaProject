<%@page import="job.resume.Resume_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	int re;

	String career_btn = request.getParameter("career_radio_btn");
	System.out.println("!@#!@#"+career_btn);


	request.setAttribute("resume", resume);
	request.setAttribute("resumeAbility", resumeAbility);
	
	
	request.setAttribute("resumeCareer", resumeCareer);
	
	Resume_Dao dao = Resume_Dao.getInstance();
	
	
	re = dao.insertResumeAbility(resumeAbility);
	System.out.println("1.ability insert re ?? :" + re);
	
	if (career_btn.equals("old")){
	re = dao.insertResumeCareer(resumeCareer);
	System.out.println("2.career insert re ?? :" + re);
	}
	re = dao.insertResume(resume,career_btn);
	System.out.println("3.resume insert re?? :" + re);
	
	
	
%>
<c:redirect url="resume_list.jsp"></c:redirect>

</body>
</html>