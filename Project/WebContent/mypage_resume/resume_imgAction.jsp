<%@page import="job.resume.Resume_Dao"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="job.resume.Resume_Service"%>
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

<title>Insert title here</title>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%

Resume_Dao dao = Resume_Dao.getInstance();
int re;
try{
	re = dao.UpdateResumeImg(request);
}catch (Exception e){
	System.out.print("액션실패");
	e.printStackTrace();
}

%>


<c:redirect url="resume_list.jsp"></c:redirect>
</head>
<body>

</body>
</html>