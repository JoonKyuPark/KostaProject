<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="job.exam.Etp_Exam_listModel"%>
<%@page import="job.exam.Etp_Exam_Info"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="job.exam.Etp_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 로그인 된 기업번호와 시험정보에 저장된 기업번호가 일치한것만 출력된다. -->
<%
	String pageNum = request.getParameter("pageNum");
	ArrayList<String> sdateList = new ArrayList<String>();
	ArrayList<String> ddateList = new ArrayList<String>();
	request.setAttribute("etp_no", 1);
	if (pageNum == null) {
		pageNum = "1";
	}
	int requestPage = Integer.parseInt(pageNum);
	SimpleDateFormat format = new SimpleDateFormat("yy/MM/dd");
	Etp_Exam_Service service = Etp_Exam_Service.getInstance();
	int etp_no = 1;
	Etp_Exam_listModel listModel = service.examListService(requestPage,
			etp_no);
	request.setAttribute("listModel", listModel);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h2>시험일정 관리</h2>
		<br> <br>
		<div id="examListOut">
			<h3>&nbsp; &nbsp;시험일정 목록</h3>
			<form action="Etp_exam_Update.jsp" method="get">
				<table id="examListTable" class="table table-bordred table-striped">
					<tr>
						<th><input type="checkbox" id="checkall" /></th>
						<th>시험 번호</th>
						<th>시험명</th>
						<th>시험 시작일</th>
						<th>시험 종료일</th>
						<th>응시인원</th>
						<th>시험과목</th>
					</tr>
					<%
						for (int i = 0; i < listModel.getList().size(); i++) {
					%>
					<tr class="examListTr">
						<td><input type="checkbox" name= "exam_no" value="<%=listModel.getList().get(i).getExam_no()%>">
						<td><%=listModel.getList().get(i).getExam_no()%></td>
						<td><%=listModel.getList().get(i).getExam_name()%></td>
						<td><%=format.format(listModel.getList().get(i)
						.getExam_sdate())%></td>
						<td><%=format.format(listModel.getList().get(i)
						.getExam_ddate())%></td>
						<td><%=listModel.getList().get(i).getExam_number()%></td>
						<td><%=listModel.getList().get(i).getExam_field()%></td>
					</tr>
					<%
						}
					%>
				</table>

				<br> <br>
				<!--table-->
				<div align="center" style="margin-bottom: 5%;">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<c:if test="${listModel.startPage > 5 }">
							<a href="Etp_Exam_List.jsp?pageNum=${listModel.startPage-5 }"><i
								class="xi-angle-left-min"></i></a>
						</c:if>
						<c:forEach var="pageNo" begin="${listModel.startPage }"
							end="${listModel.endPage }">
							<a href="Etp_Exam_List.jsp?pageNum=${pageNo}">${pageNo }</a>
						</c:forEach>
						<c:if test="${listModel.endPage < listModel.totalPageCount }">
							<a href="Etp_Exam_List.jsp?pageNum=${listModel.startPage+5 }"><i
								class="xi-angle-right-min"></i></a>
						</c:if>
					</div>
					<div class="col-md-4" align="left">
						<input type="submit" value="수정하기"> <a href="#"><input type="button"
							class="btn btn-info" value="삭제하기"></a>
					</div>
				</div>
			</form>
		</div>
		<br>
	</div>
	<!--col_md_8-->
	<div class="col-md-2"></div>
</html>