<%@page import="java.util.List"%>
<%@page import="job.main.Etp_infor"%>
<%@page import="job.main.Member_info"%>
<%@page import="job.main.LogginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("utf-8");
	String reg = request.getParameter("id");
LogginService log = LogginService.getInstance();
	request.setAttribute("reg", reg);
	System.out.println(request.getParameter("kind")+22222222);
	if(request.getParameter("kind")==null){
	if (reg == null) {
		int loggin = 0;
		request.setAttribute("loggin", loggin);
	}
	else if (reg.equals("2")) {
		int loggin = 2;
		request.setAttribute("loggin", loggin);
		String delegator_name = request.getParameter("delegator_name");
		String etp_id = request.getParameter("etp_id");
		String etp_pass = request.getParameter("etp_pass");
		String etp_email = request.getParameter("etp_email");
		String etp_kind = request.getParameter("etp_kind");
		String etp_tel = request.getParameter("etp_tel");
		String etp_tel2 = request.getParameter("etp_tel2");
		String etp_tel3 = request.getParameter("etp_tel3");
		String etp_sales = request.getParameter("etp_sales");
		String etp_registration_num = request
				.getParameter("etp_registration_num");
		String etp_name = request.getParameter("etp_name");
		Etp_infor etp = new Etp_infor(etp_id, etp_pass, etp_email,
				etp_tel + etp_tel2 + etp_tel3, etp_kind,
				etp_registration_num, delegator_name, etp_name);
		session.setAttribute("login", true);
		session.setAttribute("kind", true);
		System.out.println("3e3de");
		log.insert2(etp);
	} else if (reg.equals("1")) {
		int loginid=0;
		int loggin = 1;
		request.setAttribute("loggin", loggin);
		String member_name = request.getParameter("member_name");
		String member_email = request.getParameter("member_email");
		String member_tel = request.getParameter("tel");
		String member_tel2 = request.getParameter("tel2");
		String member_tel3 = request.getParameter("tel3");
		String member_id = request.getParameter("member_id");
		String member_pwd = request.getParameter("member_pwd");
		Member_info m = new Member_info(member_name, member_email,
				member_tel + member_tel2 + member_tel3, member_id,
				member_pwd);
		log.insert(m);
		session.setAttribute("login", true);
		session.setAttribute("kind", false);
		session.setAttribute("loginid",request.getAttribute("logginid"));
	
	}
	else if(reg.equals("0")){
		session.removeAttribute("login");
		session.removeAttribute("kind");
	}
	}
	else{
	if(request.getParameter("kind").equals("1")){
		int loggin = log.Mlist(request, response);
		request.setAttribute("loggin", loggin);
		session.setAttribute("login", true);
		session.setAttribute("kind", false);
		session.setAttribute("loginid",request.getAttribute("logginid"));
				}
	else if(request.getParameter("kind").equals("2")){
		int loggin =log.Elist(request, response); 
		request.setAttribute("loggin", loggin);
		session.setAttribute("login", true);
		session.setAttribute("kind", true);
		session.setAttribute("loginid",request.getAttribute("logginid"));
	}
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

<title>Koin</title>
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
			<c:when test="${loggin==0}">
				<div class="col-md-3">
					<ul class="row nav nav-tabs">
						<li class="active"><a href="#person" data-toggle="tab">개인회원</a></li>
						<li><a href="#coper" data-toggle="tab">기업회원</a></li>
					</ul>
					<div class="tab-content">
						<div class="row tab-pane active" id="person">
							<form action="mainDisplay.jsp">
							<input type="hidden" value="1" name="kind" >
								<input type="text" name="logid" placeholder="아이디"
									required="required"> <input type="text" name="logpwd"
									placeholder="비밀번호"><br> <input type="submit"
									value="로그인"> <a type="button" href="join.jsp">회원가입</a>
							</form>
						</div>
						<div class="row tab-pane" id="coper">
							<form action="mainDisplay.jsp">
							<input type="hidden" value="2" name="kind">
								<input type="text" name="id" placeholder="아이디"
									required="required"> <input type="text" name="pass"
									placeholder="비밀번호"><br> <input type="submit"
									value="로그인"> <a type="button" href="AgreeMent.jsp">회원가입</a>
							</form>
						</div>
					</div>
			</c:when>
			<c:when test="${loggin==1}">
				<div class="col-md-3">
					<div class="col-md-4">
						<img src="images/javacan1.gif">
						<div class="col-md-2">
						<form action="mainDisplay.jsp">
						 <input type="hidden" name="loggin" value="0">
						<input type="submit" value="로그아웃">
						</form>
						</div>
					</div>
					환영합니다
				</div>
			</c:when>
			<c:when test="${loggin==2}">
				<div class="col-md-3">
					<div class="col-md-4">
					기업이야
						<div class="col-md-2">
						<form action="mainDisplay.jsp">
						 <input type="hidden" name="loggin" value="0">
						<input type="submit" value="로그아웃">
						</form>
						</div>
						</div>
							</div>
							</c:when>
						</c:choose>
						</div>
</body>
</html>