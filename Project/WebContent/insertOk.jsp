<%@page import="kosta.service.ReceiveService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="Dummy" class="kosta.model.Dummy"></jsp:useBean>
<jsp:setProperty property="*" name="Dummy"/>
<%
	//session에 저장되어있는 회원 번호를 가지고 옵니다.
	String b_id = (String)session.getAttribute("b_id");
	
	//service객체 생성
	ReceiveService service = new ReceiveService();
	int member_no = service.getMember_Number(b_id);

	System.out.println( "member_no = " + member_no );
	System.out.println( "member_no = " + member_no );
	System.out.println( "member_no = " + member_no );

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--날 처리해 줘요-->
	<!--  -->
</body>
</html>