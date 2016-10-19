<%@page import="job.main.LogginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	request.setCharacterEncoding("UTf-8");
	LogginService service = LogginService.getInstance();

	int commit = service.mUpdate(request);
	System.out.println(commit);
	if(commit==0){
		commit=1;
		request.setAttribute("commit", commit);
	}
	else if (commit == 1) {
		request.setAttribute("commit", commit);
	} else {
		commit = 0;
		request.setAttribute("commit", commit);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	if (commit == 1) {

		alert("수정이 완료되었습니다")
		location.href("mainDisplay.jsp")
	} else {
		alert("수정에 실패했습니다")
		location.href("mainDisplay.jsp")
	}
</script>
<title>Insert title here</title>
</head>
<body>


</body>
</html>