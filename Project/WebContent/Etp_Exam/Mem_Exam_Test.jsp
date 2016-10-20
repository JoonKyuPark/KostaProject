<%@page import="job.exam.Etp_Exam_Info"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.Mem_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<script src="../bootstrap/bootstrap-select.min.js"></script>
<link href="../bootstrap/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<!------- XE FONT -------->
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<link rel="stylesheet" href="../css/Etp_Exam.css">
<script src="../js/Exam.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원</h2>
<form action="Mem_Test_Action.jsp" method="post">
	<%
		Mem_Exam_Service service = Mem_Exam_Service.getInstance();
		List<Etp_Exam_Info> list = service.examListService();
	%>
=	<select name="exam_no" class="selectpicker">
		<option>선택</option>
		<%for(int i=0; i<list.size(); i++){ %>
		<option value="<%=list.get(i).getExam_no()%>"><%=list.get(i).getExam_name()%></option>
		<%} %>
	</select>	
	<input type="submit" value="확인">
</form>
</body>
</html>