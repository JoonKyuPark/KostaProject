<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String b_id = "major100";
	session.setAttribute("b_id", b_id);
%>
	<!--클릭했을때, 회원번호를 넘깁니다.-->
	<a href = "insertOk.jsp">click here</a>
</body>
</html>