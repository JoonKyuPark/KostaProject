
<%@page import="Etp.model.ETP_Exam_Service"%>
<%@page import="Etp.model.Etp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("utf-8");
%>


<%

	String id = request.getParameter("b_id");
	int b_id = Integer.parseInt(id);

	//기업아이디 를 통해 기업번호를 불러온다.
	String gid = "11";
	session.setAttribute("giup", gid);
	int gid2 = Integer.parseInt((String) session.getAttribute("giup"));
	
	ETP_Exam_Service service = ETP_Exam_Service.getInstance();
	
	
	int gno = service.getGno(gid2);
	
	System.out.println("기업번호 입니다"+gno);
	
	
	
	List<Etp> list = service.getEtplist(b_id);
	

	
	
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	


</body>
</html>