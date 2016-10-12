<%@page import="job.exam.ETP_Exam_Info"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.ETP_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%
	ETP_Exam_Service service = ETP_Exam_Service.getInstance();
	List<ETP_Exam_Info> list = service.examListService();
	SimpleDateFormat format = new SimpleDateFormat("yy/MM/DD");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!------- BOOTSTRAP -------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script src="../js/exam.js"></script>

<title>ETP Exam List</title>
</head>
<body>
<div class="container">
	<div class="body-1">
		<h4>시험 일정 관리</h4>
		<div class="col-md-12">	
			<table id="mytable" class="table table-bordred table-striped">
				<tr>
					<th><input type="checkbox" id="checkall" /></th>
					<th>시험 번호</th>
					<th>시험명</th>
					<th>시험 시작일</th>
					<th>시험 종료일</th>
					<th>응시인원</th>
				</tr>
				<%for(int i = 0; i<list.size(); i++){ %>
				<tr>
					 <th><input type="checkbox" name="chk"/></th>
					 <td><%=list.get(i).getExam_no() %></td>
					 <td><%=list.get(i).getExam_name() %></td>
					 <td><%=format.format(list.get(i).getExam_sdate())%></td>
					 <td><%=format.format(list.get(i).getExam_ddate()) %></td>
					 <td><%=list.get(i).getExam_number() %></td>		
				</tr>
				<%} %>
			</table><!--table-->	
        </div><!--col_md_12-->
	</div><!--body-1-->
	<div class="body-2">
		<div class = "col-md-12" align = "right">
			<button type="button" class="btn btn-primary">삭제하기</button>
			
			<div class = "paging" align="center">
				<ul class="pagination">
					<li class="disabled">
						<a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
					</li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
						<a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</li>
				</ul>
			</div>
		</div><!--col-md-12-->
	</div>
</div><!-- list container -->
</body>
</html>