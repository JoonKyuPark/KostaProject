<%@page import="job.exam.ETP_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	ETP_Exam_Service service = ETP_Exam_Service.getInstance();
		try{
			service.inputExamScheduleService(request, response);
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