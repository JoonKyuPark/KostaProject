<%@page import="java.util.List"%>
<%@page import="job.main.Etp_infor"%>
<%@page import="job.main.Member_info"%> 
<%@page import="job.main.LogginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String reg = request.getParameter("id");
	LogginService log = LogginService.getInstance();
	request.setAttribute("reg", reg);

	if (session.getAttribute("loggin") != null) {
		int check = (int) session.getAttribute("loggin");
	}
	if (request.getParameter("kind") == null) { //로그인 안됨

		if (reg == null) {

			if (session.getAttribute("kind") == null) {

				int loggin = 0;
				request.setAttribute("loggin", loggin);
				System.out.println("111111111");
			}

			else if (!(boolean) session.getAttribute("kind")) {
				request.setAttribute("loggin", 1);
			} else if (((boolean) session.getAttribute("kind"))) {
				request.setAttribute("loggin", 2);
			}

		} else if (reg.equals("2")) {
			int loggin = 2;
			request.setAttribute("loggin", loggin); //현재상태
			session.setAttribute("login", true); //로그인상태
			session.setAttribute("kind", true); // 회원종류
			System.out.println("3e3de");
			session.setAttribute("loginid",
					request.getParameter("logid"));
			log.insert2(request);
		} else if (reg.equals("1")) {
			int loginid = 0;
			int loggin = 1;
			request.setAttribute("loggin", loggin);
			log.insert(request);
			session.setAttribute("loggin", loggin);
			session.setAttribute("login", true);
			session.setAttribute("kind", false);
			session.setAttribute("loginid",
					request.getParameter("logid"));

		} else if (reg.equals("0")) {
			int loggin = 0;
			request.setAttribute("loggin", loggin);
			session.removeAttribute("login");
			session.removeAttribute("kind");
			session.removeAttribute("loggin");
			session.removeAttribute("etp_no");
		}
	}

	else {
		if (request.getParameter("kind") != null) {
			System.out.println(request.getParameter("kind"));
			if (request.getParameter("kind").equals("1")) { //일반회원
				int loggin = log.Mlist(request, response);
				System.out.print(loggin);
				request.setAttribute("loggin", loggin);
				session.setAttribute("loggin", loggin);
				session.setAttribute("login", true);
				session.setAttribute("kind", false);
				session.setAttribute("loginid",
						request.getParameter("logid"));
			} else if (request.getParameter("kind").equals("2")) { //기업회원
				int loggin = log.Elist(request, response);
				System.out.print(log.Elist(request, response));
			int etp_no=log.Esearch(request.getParameter("logid"));
				
				request.setAttribute("loggin", 2);
				session.setAttribute("loggin", loggin);
				session.setAttribute("login", true);
				session.setAttribute("kind", true);
				session.setAttribute("loginid",
						request.getParameter("logid"));
				session.setAttribute("etp_no", etp_no);
			}
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
<script type="text/javascript">

</script>
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

<<<<<<< HEAD
<div name="main_menu" class="container">
      <ul class="nav nav-pills">
         <li><a href="../main/mainDisplay.jsp">홈</a></li>
         <li><a href="../main/update.jsp">마이페이지</a></li>
         <li><a href="../Etp_Exam/Etp_Exam_Main.jsp">시험</a></li>
         <li><a>채용정보검색</a></li>
         <li><a href="../main/smart.jsp">스마트매칭</a></li>
         <li><a>맞춤채용정보</a></li>
         <li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
         <li><a>채용등록</a></li>
      </ul>
   </div>
=======
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
>>>>>>> branch '20161019' of https://github.com/JoonKyuPark/KostaProject
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
							<form action="mainDisplay.jsp" method="post">
								<input type="hidden" value="1" name="loggin"> <input
									type="hidden" value="1" name="kind"> <input type="text"
									name="logid" placeholder="아이디" required="required"> <input
									type="text" name="logpwd" placeholder="비밀번호"><br>
								<input type="submit" value="로그인"> <a type="button"
									href="join.jsp">회원가입</a>
							</form>
						</div>
						<div class="row tab-pane" id="coper">
							<form action="mainDisplay.jsp">
								<input type="hidden" value="2" name="loggin"> <input
									type="hidden" value="2" name="kind"> <input type="text"
									name="logid" placeholder="기업아이디" required="required"> <input
									type="text" name="logpwd" placeholder="비밀번호"><br>
								<input type="submit" value="로그인"> <a type="button"
									href="AgreeMent.jsp">회원가입</a>
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
								<input type="hidden" name="id" value="0"> <input
									type="hidden" name="loggin" value="0"> <input
									type="submit" value="로그아웃">
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
							<form action="mainDisplay.jsp" method="post">
								<input type="hidden" name="id" value="0"> <input
									type="hidden" name="loggin" value="0"> <input
									type="submit" value="로그아웃">
							</form>
						</div>
					</div>
				</div>
			</c:when>
		</c:choose>
	</div>
</body>
</html>