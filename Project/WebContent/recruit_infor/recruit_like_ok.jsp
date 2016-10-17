<%@page import="recruit.clip.Recruit_Clip_Service"%>
<%@page import="recruit.infor.Recruit_infor_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    
	String id = request.getParameter("id");
    System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzz"+id);
    int id1=Integer.parseInt(id);
 	request.setCharacterEncoding("utf-8");
    
 	Recruit_Clip_Service rcService=Recruit_Clip_Service.getInstance();
    int re=rcService.insertRecruitLikeService(id1);
    System.out.println("rerer"+re);
    
    if(re>0){
    	response.sendRedirect("recruit_list.jsp");
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