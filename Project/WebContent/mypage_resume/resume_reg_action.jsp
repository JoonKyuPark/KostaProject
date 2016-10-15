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
<%
	request.setAttribute("resume", resume);
	Resume_Dao dao = Resume_Dao.getInstance();
	int re = dao.insertResume(resume);
	
	System.out.println("액션에 있는 re는?? :" + re);
%>
${resume.volun_field}
</body>
</html>