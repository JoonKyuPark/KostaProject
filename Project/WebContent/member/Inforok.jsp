
<%@page import="Etp.model.ETP_Exam_Service"%>
<%@page import="Etp.model.Etp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("utf-8");
%>


<%
	//�����ȣ
	String id = request.getParameter("b_id");
	int b_id = Integer.parseInt(id);

	//������̵� �� ���� �����ȣ�� �ҷ��´�.
	String gid = "11";
	session.setAttribute("giup", gid);
	int gid2 = Integer.parseInt((String) session.getAttribute("giup"));
	
	ETP_Exam_Service service = ETP_Exam_Service.getInstance();
	
	
	int gno = service.getGno(gid2);
	
	//�����ȣ , ������ȣ�� �Ѱ� insert ���� ����� 
	
	int re =0;
	
	re = service.Insertmem_log(b_id,gno);
	System.out.println("�����ȣ �Դϴ�"+gno);
	
	
	

	
	if(re >0){
		System.out.println("����");
		
		response.sendRedirect("company_info.jsp");
				
	
	}else{
		System.out.println("����");
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