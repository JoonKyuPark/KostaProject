<%@page import="job.exam.Etp_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Etp_Exam_Service service = Etp_Exam_Service.getInstance();
	String[] str = request.getParameterValues("exam_no");
	for(int i = 0; i < str.length; i++){
		int exam_no = Integer.parseInt(str[i]);
		service.deleteExamService(exam_no);
	}
	response.sendRedirect("Etp_Exam_List.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>