<%@page import="Etp.mypage.ETP_info_Service"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="etp_info" class="Etp.mypage.ETP_Infor"></jsp:useBean>
<jsp:setProperty name="etp_info" property="*"></jsp:setProperty>
<%
	ETP_info_Service etp_info_service = ETP_info_Service.getInstance();

	//이메일 아이디,주소통합
	String etp_email_id = request.getParameter("etp_email_id");
	String etp_email = request.getParameter("etp_email");
	
	etp_email = etp_email_id + "@" + etp_email;
	etp_info.setEtp_email(etp_email);
	System.out.println(etp_email);
	
	//지역번호,전화번호 통합
	String etp_tel_location = request.getParameter("etp_tel_location");
	String etp_tel = request.getParameter("etp_tel");
	etp_tel = etp_tel_location + etp_tel;
	etp_info.setEtp_tel(etp_tel);
	
	System.out.println(etp_info);
	etp_info_service.update_etp_info(etp_info);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>