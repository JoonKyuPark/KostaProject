<%@page import="job.resume.ResumeAll"%>
<%@page import="java.util.List"%>
<%@page import="job.resume.Resume_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<link href="../css/resume.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript">
	
</script>
<%
Resume_Dao dao = Resume_Dao.getInstance();
List<ResumeAll> list = dao.ResumeList();
request.setAttribute("list", list);
%>
<title>마이페이지_이력서 리스트</title>
</head>
<body>
<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a href="../main/mainDisplay.jsp">홈</a></li>
			<li><a href="../main/update.jsp">마이페이지</a></li>
			<li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
			<li><a>채용정보검색</a></li>
			<li><a>스마트매칭</a></li>
			<li><a>맞춤채용정보</a></li>
			<li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
			<li><a>채용등록</a></li>
		</ul>
	</div>

	<div id="container" class="col-md-12">
		<div class="left_aside col-md-2">
			<ul class="aside_ul">
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
			</ul>
		</div>

		<div class="content col-md-8">

			<h3 class="resume_h3 col-md-12">이력서 관리</h3>

			<a href="resume_reg.jsp"><button class="resume_reg col-md-offset-10 col-md-2">이력서 등록</button></a>

			<table class="resume_list_table table col-md-12">
				<tr>
					<th class="col-md-2">번호</th>
					<th class="col-md-6">제목</th>
					<th class="col-md-2">관리</th>
					<th class="col-md-2">작성일</th>
				</tr>
				<c:forEach items="${list}" var="i" >
				<tr>
				<c:set var="re_date" value="${i.resume_date}"/>
				<c:set var="re_d" value="${fn:substring(re_date,0,10)}"/>		<!-- 2016-10-17까지 -->
				<td class="col-md-2">${i.resume_no}</td>
					<td class="col-md-6">
						<a href="resume_detail.jsp?seq=${i.resume_no}">
							${i.resume_title}
						</a>
					</td>
					<td class="col-md-2">
						<a href="resume_update.jsp?seq=${i.resume_no}">수정</a>
						 | 복사
					</td>
					<td class="col-md-2">${re_d}</td>
				</tr>
			</c:forEach>
			</table>

			<button type="button" class="btn btn-info">기본 이력서 설정</button>
			<button type="button" class="btn btn-default">인쇄하기</button>
		</div>
		<div class="right_aside col-md-2">오른쪽 날개</div>

	</div>
</body>
</html>