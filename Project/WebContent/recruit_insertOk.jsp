<%@page import="java.util.List"%>
<%@page import="kosta.service.ReceiveService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="Dummy" class="kosta.model.Dummy"></jsp:useBean>
<jsp:setProperty property="*" name="Dummy"/>
<%
	//service객체를 생성합니다.
	ReceiveService service = new ReceiveService();

	//session에 저장되어 있는 아이디를 가지고 옵니다.
	String b_id = (String)session.getAttribute("b_id");
	
	//아이디에 해당하는 회원정보를 가지고 옵니다.
	int member_no = service.getMember_Number(b_id);
	
	//recruit_log table에 회원 번호를 저장합니다.
	//원래 회원 번호도 받아서 저장해야하지만... 
	//일단 임의로 저장해둠
	service.Insert_member(member_no); 
	
	response.sendRedirect("registration.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

	/* location.href = "registration.jsp"; */

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--registation.jsp으로 이동-->
</body>
</html>