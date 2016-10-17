<%@page import="Etp.model.ETP_Exam_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

	String[] log= request.getParameterValues("member_log");


	if(log !=null){


		ETP_Exam_Service service = ETP_Exam_Service.getInstance();
		
		for(int i =0; i<log.length; i++){
		 System.out.println(log[i]);
		 int arg = Integer.parseInt(log[i]);
		 service.deletedinfo(arg);
		 	 
		 	 
		}
		
		
		response.sendRedirect("company_info.jsp");
	
	}else{
		response.sendRedirect("company_info.jsp");
	}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	인재 상세 페이지 입니다.
</body>
</html>