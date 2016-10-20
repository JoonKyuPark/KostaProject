<%@page import="job.exam.Etp_Exam_Question"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.Etp_Question_Service"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 로그인 된 기업번호와 시험정보에 저장된 기업번호가 일치한것만 출력된다. -->
<%
	Etp_Question_Service service = Etp_Question_Service.getInstance();
	int etp_no = (Integer)session.getAttribute("etp_no");
	List<Etp_Exam_Question> list = service.questionListService(etp_no);
%>
<!DOCTYPE html>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!------- BOOTSTRAP -------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script src="../js/exam.js"></script>
<link rel="stylesheet" href="../css/Etp_Exam.css">
<!------- XE FONT -------->
<link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<title>ETP Exam List</title>
</head>
<body id=ETPexamListBody>
	<div class="col-md-2">
		<ul class="nav nav-pills">
			<li><a href="Etp_Exam_Main.jsp">시험메인</a></li>
			<li><a href="Etp_Exam_List.jsp">시험목록</a></li>
			<li><a href="Etp_Exam_Reg.jsp">시험등록</a></li>
			<li><a href="Etp_Question_Reg.jsp">시험문제등록</a></li>
			<li><a href="Etp_Question_List.jsp">시험문제목록</a>
		</ul>
	</div>
	<div class="col-md-8">
		<h2>시험일정 관리</h2>
		<br> <br>
		<div id="examListOut">
			<h3>&nbsp; &nbsp;시험문제 목록</h3>
			<form id="boardForm" action="" method="post">
				<input type=hidden name="etp_no" value="<%=etp_no%>">
				<table class="table table-bordred table-striped" style="table-layout:fixed">
					<tr>
						<td style="text-overflow:ellipsis; overflow:hidden">시험번호</td>
						<td style="text-overflow:ellipsis; overflow:hidden">시험이름</td>
						<td style="text-overflow:ellipsis; overflow:hidden">시험내용</td>
					</tr>
					<%for(int i=0; i<list.size(); i++){ %>
					<tr>
						<td><%=list.get(i).getExam_question_no() %></td>
						<td><%=list.get(i).getQuestion_name() %></td>
						<td style="text-overflow:ellipsis; overflow:hidden"><%=list.get(i).getQuestion_content() %></td>
					</tr>
					<%} %>
				</table>


				<br> <br>
			</form>
		</div>
		<br>
	</div>
	<!--col_md_8-->
	<div class="col-md-2"></div>
</html>