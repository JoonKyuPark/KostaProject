<%@page import="join.receive.Join_Receive_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   request.setCharacterEncoding("utf-8");
%>    

<%
	String id=request.getParameter("id");
	int id1=Integer.parseInt(id);
	System.out.println("aaa5555555555555555555555555555555ff55555"+id);
	Join_Receive_Service jrService=Join_Receive_Service.getInstance();
	 int re=jrService.insertJoinService(id1);
	 System.out.println("aaa"+re);
      if(re>0){
    	  response.sendRedirect("recruit_detail_infor.jsp?id="+id1);
      }

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