<%@page import="java.util.ArrayList"%>
<%@page import="infor.etp.model.Etp_Infor"%>
<%@page import="infor.etp.model.Etp_Infor_Service"%>
<%@page import="infor.etp.model.Etp_Infor_Dao"%>
<%@page import="recruit.infor.Recruit_Infor"%>
<%@page import="java.util.List"%>
<%@page import="recruit.infor.Recruit_infor_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Recruit_infor_Service riService = Recruit_infor_Service.getInstance();
	System.out.println(riService);
	System.out.println("Ddddgg");
	String location=request.getParameter("id");
	if(location.equals("seoul")){
		location="서울";
	}else if(location.equals("gg")){
		location="경기";
	}
	System.out.println(location);
	List<Recruit_Infor> list = riService.locRecruitService(location);
	request.setAttribute("list1", list);

	Etp_Infor_Service eiService = Etp_Infor_Service.getInstance();
	Etp_Infor ei = null;
	List<Etp_Infor> etList = new ArrayList<Etp_Infor>();
	for (int i = 0; i < list.size(); i++) {
		ei = eiService.detailEtpService(list.get(i).getEtp_no());
		etList.add(ei);
	}
	request.setAttribute("etList", etList);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
 <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/custom2.css" rel="stylesheet">

</head>
<body>
<a href="recruit_list.jsp">전체</a><a href="seoul_recruit_list.jsp?id=gg">경기도</a>
	<table class="table table-hover">
		  <thead>
		<tr height="30">
			<th width="50"></th>
			<th width="50">회사명</th>
			<th width="250">채용제목</th>
			<th width="150">근무조건</th>
			<th width="150">등록일마감일</th>
		</tr>
		</thead>
			
		
		<c:forEach  var="i" begin="0" end="${list1.size()-1}" step="1">	
		<tr height="30">
			<td align="center"></td>
				<td align="center">${etList[i].etp_name}</td>
				<td align="left"><a href="recruit_detail_infor.jsp?id=${list1[i].recruit_no}">${list1[i].recruit_title}</a>
				<a href="recruit_like_ok.jsp?id=${list1[i].recruit_no}">좋아요</a></td>
				<td align="center">${list1[i].hire_type}<br>${list1[i].ac_ability_no}<br>봉급&nbsp ${list1[i].income_qualification}<br>근무요일&nbsp${list1[i].recruit_day}</td>
				<td align="center">${list1[i].receive_ddate}</td>
			</tr>
		
		</c:forEach>
</body>
</html>