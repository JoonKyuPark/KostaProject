<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String reg= request.getParameter("id");
request.setAttribute("reg", reg);
%>
<c:if test="${reg=='1'}">
<jsp:useBean id="Pm" type="job.main.PMember"></jsp:useBean>
<jsp:setProperty property="*" name="Pm"/>
</c:if>
<%

if(reg==null){
	int loggin =0;
	request.setAttribute("loggin", loggin);
}else{
if(reg.equals('1')){
	
}else if(reg.equals('2')){}
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!------- BOOTSTRAP -------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<title>Koin</title>
<script type="text/javascript" src="../js/*"></script>
</head>
<body>
	<div class="container" align="center">
		<form action="#">
			<ul class="nav nav-pills">
				<li><img>로고</li>
				<li><input type="text"></li>
				<li><input type="submit" value="검색"></li>

			</ul>
		</form>
	</div>

	<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a>홈</a></li>
			<li><a>마이페이지</a></li>
			<li><a>채용정보검색</a></li>
			<li><a>스마트매칭</a></li>
			<li><a>맞춤채용정보</a></li>
			<li><a>이력서등록</a></li>
			<li><a>채용등록</a></li>
		</ul>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-9">스마트매칭 들어갈 자리</div>
        <c:choose>
        <c:when test="${loggin==1}">
		<div class="col-md-3">
			<form action="mainDisplay.jsp">
				<input type="text"  name="id" placeholder="아이디" required="required" > <input type="text"
					name="pass" placeholder="비밀번호"><br> <input type="submit" value="로그인">
					<a type="button" href="join.jsp">회원가입</a>
			</form>
		</div>
		</c:when>
		 <c:when test="${loggin==0}">
		 <div class="col-md-3">
		    <div class="col-md-4">
		       <img src="images/javacan1.gif">
		    </div>
		    환영합니다
		 </div>
		
		</c:when>
</c:choose>
         
	</div>






</body>
</html>