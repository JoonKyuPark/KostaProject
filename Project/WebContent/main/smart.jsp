<%@page import="recruit.infor.Recruit_Infor"%>
<%@page import="java.util.List"%>
<%@page import="job.main.LogginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
if(session.getAttribute("kind")!=null){
	if(!(boolean)(session.getAttribute("kind"))){
	    	LogginService service = LogginService.getInstance();
	    	String loginid=(String)session.getAttribute("loginid");
	    	List<Recruit_Infor>list =service.Msmart(loginid);
	    	request.setAttribute("list", list);
	    	
	}else{
	    
		response.sendRedirect("mainDisplay.jsp");
	}
}else {
	response.sendRedirect("mainDisplay.jsp");
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<title>스마트매칭</title>
</head>
<body>
<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a href="../main/mainDisplay.jsp">홈</a></li>
			<li><a href="../main/update.jsp">마이페이지</a></li>
			<li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
			<li><a>채용정보검색</a></li>
			<li><a href="../main/smart.jsp">스마트매칭</a></li>
			<li><a>맞춤채용정보</a></li>
			<li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
			<li><a>채용등록</a></li>
		</ul>
	</div>
	
	<br>
	<br>
	<div class="container">
<tr height="30">
			<th align="center" width="50">회사명</th>
			<th align="center" width="250">채용제목</th>
			<th align="center" width="150">근무조건</th>
			<th align="center" width="150">등록일마감일</th>
		</tr>
<c:forEach  var="list"  items="${list}" >	
		<tr height="30">
			<td align="center">
			<div class="checks etrans"> <input type="checkbox" id="${list.recruit_no}" name="box">  <label for="${list.recruit_no}"></label> </div></td>
				<td align="center">${list.recruit_title}</td>
				<td align="left"><a href="recruit_detail_infor.jsp?id=${list.recruit_no}">${list.recruit_title}</a>
				<a href="recruit_like_ok.jsp?id=${list[i].recruit_no}">좋아요</a></td>
				<td align="center">${list.hire_type}<br>${list[i].ac_ability_no}<br>봉급&nbsp ${list.income_qualification}<br>근무요일&nbsp${list.recruit_day}</td>
				<td align="center">${list.receive_ddate}</td>
			</tr>
		
		</c:forEach>
</div>
</body>
</html>