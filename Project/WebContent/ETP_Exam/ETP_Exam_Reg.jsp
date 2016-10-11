<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SimpleDateFormat format = new SimpleDateFormat("yyyy");
	Date date = new Date();
	String strYear = format.format(date);
	int year = Integer.parseInt(strYear);
%>

<!DOCTYPE html>
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
<link rel="stylesheet" href="../css/ETP_Exam.css">
<script src="../js/Exam.js"></script>
<head>
<meta charset="UTF-8">
<title>Registration Exam</title>
</head>
<body>
	<div>
		<div class="col-md-2"> Logo </div>
		<div class="col-md-8"> TopMenu </div>
		<div class="col-md-2"> Empty </div>
		<div class="col-md-2">Left Menu(2)</div>
		<div class="col-md-8">
			<h2 class="examRegTitle">시험 일정 등록</h2>
			<br>
			<div class="col-md-2"></div>
			<div class="inputExamForm col-md-8">
				<form role="form" action="">
					<div class="form-group col-md-12">
						<label for="inputExamName" class="label col-md-12">시험 이름</label>
						<div class="col-md-12">
							<input type="text" class="form-control col-md-12"
								placeholder="내용을 입력하세요.">
						</div>
						<br>
						<br>
						<br>
					</div>


					<div class="form-group col-md-12">
						<label for="inputExamName" class="label col-md-12">시험 기간</label>
						<div class="col-md-12">
							<label for="inputSDate" class="examTerm col-md-12">시작일</label> <select
								class="selectpicker col-md-4">
								<option>년도</option>
								<option value="<%=year%>"><%=year%></option>
								<option value="<%=year + 1%>"><%=year + 1%></option>
							</select> <select class="selectpicker col-md-4">
								<option>월</option>
								<c:forEach var="i" begin="1" end="12">
									<option value="${i }">${i }</option>
								</c:forEach>
							</select> <select class="selectpicker col-md-4">
								<option>일</option>
								<c:forEach var="i" begin="1" end="31">
									<option value="${i }">${i }</option>
								</c:forEach>
							</select>
						</div>
						<br> <br> <br>

						<div class="col-md-12">
							<label for="inputSDate" class="examTerm col-md-12">종료일</label> <select
								class="selectpicker col-md-4">
								<option>년도</option>
								<option value="<%=year%>"><%=year%></option>
								<option value="<%=year + 1%>"><%=year + 1%></option>
							</select> <select class="selectpicker col-md-4">
								<option>월</option>
								<c:forEach var="i" begin="1" end="12">
									<option value="${i }">${i }</option>
								</c:forEach>
							</select> <select class="selectpicker col-md-4">
								<option>일</option>
								<c:forEach var="i" begin="1" end="31">
									<option value="${i }">${i }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group col-md-12">
						<label for="examNumberForm">응시인원</label><br>
						<div class="col-md-12">
							<input type="text" class="examNumberForm form-control col-md-3">
							<label class="examNumberFormText col-md-9">명</label>
						</div>
						<br><br>
					</div>

					<div class="form-group col-md-12">
						<label for="examFieldForm" class="label col-md-12">시목과목</label><br>
						<div class="col-md-12">
							<select class="selectpicker col-md-4">
								<option>선택</option>
								<option value="Korean">문학</option>
								<option value="English">영어</option>
								<option value="Math">수학</option>
								<option value="Physics">물리</option>
								<option value="History">역사</option>
								<option value="IT">IT</option>
							</select>
						</div>
					</div>
					<div class="form-group col-md-12">
						<label for="examRefForm" class="label col-md-12">참고사항</label><br>
						<div class="col-md-12">
							<textarea class="examTextArea form-control"></textarea>
						</div>					
					</div>
					<div class="form-group col-md-12">
						<div class="col-md-4"></div>
						<div class="col-md-2">
						<input type="submit" class="btn btn-info" value="등 록" onclick="javascript:multiSending(this.form,'calendar.jsp')">
						</div>
						<div class="col-md-2">
						<input type="button" class="btn btn-info" value="취 소">
						</div>
						<div class="col-md-4"></div>


					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="col-md-2">Right Menu(3)</div>
		<div class="col-me-1"></div>
		<div class="footer col-md-10"> footer </div>
		<div class="col-me-1"></div>
	</div>
</body>
</html>