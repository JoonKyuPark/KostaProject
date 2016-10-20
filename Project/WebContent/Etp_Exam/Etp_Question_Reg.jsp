<%@page import="job.exam.Etp_Exam_Info"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.Etp_Exam_Dao"%>
<%@page import="job.exam.Etp_Exam_Service"%>
<%@page import="job.exam.Etp_Exam_listModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
			<ul class="nav nav-pills">
				<li><a href="Etp_Exam_Main.jsp">시험메인</a></li>
				<li><a href="Etp_Exam_List.jsp">시험목록</a></li>
				<li><a href="Etp_Exam_Reg.jsp">시험등록</a></li>
				<li><a href="Etp_Question_Reg.jsp">시험문제등록</a></li>
				<li><a href="Etp_Question_List.jsp">시험문제목록</a>
			</ul>
	</div>
	<div>
		<form action="question_insertOk.jsp" method="post">
			<label>문제명</label>
			<input type="text" name="question_name" placeholder="내용을 입력해주세요.">
			<label>할당 시간</label>
			<input type="number" name="question_hour" value = 0 min=0 max=10>시간
			<input type="number" name="question_minute" value = 0 min=0 max=59>분
			<input type="number" name="question_second" value = 0 min=0 max=59>초
			<textarea rows="7" cols="70" name="question_content"></textarea>
			<%
				Etp_Exam_Dao dao = Etp_Exam_Dao.getInstance();
				int etp_no=(Integer)session.getAttribute("etp_no");
				List<Etp_Exam_Info> list = dao.calendarList(etp_no);
				for(int i = 0; i<list.size(); i++){
			%>
			<input type = "radio" name="exam_no" value="<%=list.get(i).getExam_no() %>"><%=list.get(i).getExam_name()%>
			<input type = "hidden" name="etp_no" value="<%=etp_no%>">
			<%
				}
			%>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>