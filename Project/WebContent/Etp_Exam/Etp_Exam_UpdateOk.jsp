<%@page import="job.exam.Etp_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Etp_Exam_Service service = Etp_Exam_Service.getInstance();
		try{
			service.updateExamService(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Insert Complete</title>
</head>
<body>

</body>
</html>