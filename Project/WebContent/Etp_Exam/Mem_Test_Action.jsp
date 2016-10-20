<%@page import="job.exam.Etp_Exam_Question"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.Mem_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Mem_Exam_Service service = Mem_Exam_Service.getInstance();
	if(request.getParameter("result")!=null){
		
	}
	int exam_no = Integer.parseInt(request.getParameter("exam_no"));
	List<Etp_Exam_Question> list = service.questionListService(exam_no);
	int num;
	if(request.getParameter("q_no")!=null){
		num = Integer.parseInt(request.getParameter("q_no"));
	}else{
		num=0;
	}
	String time = list.get(num).getQuestion_hour() + "시간" + list.get(num).getQuestion_minute() + "분" +
		list.get(num).getQuestion_second() + "초";
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<input type="hidden" name="exam_no" value="<%=list.get(num).getExam_no()%>">
		<input type="hidden" name="examQuestionNo" value="<%=list.get(num).getExam_question_no()%>">
		<input type="hidden" name="q_no" value="<%=list.get(num).getQuestion_no()%>">
		<table>
			<tr>
				<td>번호 &nbsp; <%=list.get(num).getQuestion_no() %></td>
				<td>문제 &nbsp; <%=list.get(num).getQuestion_name() %></td>
				<td>할당시간 &nbsp; <%=time %></td>
			</tr>
			<tr>
				<td colspan="3"><%=list.get(num).getQuestion_content() %></td>
			</tr>
			<tr>
				<td colspan="3"><textarea row="7" col="70" name="result" style="width:100%"></textarea></td>
			</tr>
		</table>
		<%if(num==list.size()-1){ %>
		<a href="FirstPage.jsp"><button>시험완료</button></a>
		<%}else{%>
		<a href="Mem_Test_Action.jsp?q_no=<%=list.get(num).getQuestion_no()%>&exam_no=<%=list.get(num).getExam_no()%>"><button>제출</button></a>
		<%System.out.println(list.get(num).getQuestion_no());} %>
</body>
</html>