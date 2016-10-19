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
	session.setAttribute("login", true);//TRUE가 로그인 0 FALSE가 로그인 X
	session.setAttribute("kind", false);//TRUE가 기업 FALSE가 회원
	session.setAttribute("loginid",request.getAttribute("logginid"));//로그인 아이디, 로그인 번호

	Recruit_infor_Service riService = Recruit_infor_Service.getInstance();
	System.out.println(riService);
	System.out.println("Ddddgg");
	List<Recruit_Infor> list = riService.listRecruitService();
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
	 <link rel="stylesheet" type="text/css" href="recruit_list_style.css" />
	 <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	 <script type="text/javascript">
	 $(function(){
			$("#allCheck").click(function(){
				if($("#allCheck").prop("checked")) {
					$("input[type=checkbox]").prop("checked",true);
				} else {
					$("input[type=checkbox]").prop("checked",false);
				}
			})
		})
	 </script>
</head>
<body>
<div name="main_menu" class="container">
      <ul class="nav nav-pills">
         <li><a href="../main/mainDisplay.jsp">홈</a></li>
         <li><a href="../main/update.jsp">마이페이지</a></li>
         <li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
        <li><a href="recruit_list.jsp">전체채용정보</a></li>
         <li><a href="../main/smart.jsp">스마트매칭</a></li>
         <li><a>맞춤채용정보</a></li>
         <li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
         <li><a>채용등록</a></li>
        
      </ul>
   </div>
<a href="seoul_recruit_list.jsp?id=seoul">서울시</a><a href="seoul_recruit_list.jsp?id=gg">경기도</a>
	<table class="table table-hover">
	<thead>
		<tr height="30">
			<th width="50"><center><div class="checks etrans"><input type="checkbox" id="allCheck"><label for="allCheck"></label></div></center></th>
			<th width="100"><center>회사명</center></th>
			<th width="250"><center>채용제목</center></th>
			<th width="150"><center>근무조건</center></th>
			<th width="100"><center>등록일마감일</center></th>
		</tr>
	</thead>
	<tbody>		
		<c:forEach  var="i" begin="0" end="${list1.size()-1}" step="1">	
		<tr height="30">
			<td align="center">
			<div class="checks etrans"> <input type="checkbox" id="${list1[i].recruit_no}" name="box">  <label for="${list1[i].recruit_no}"></label> </div></td>
				<td align="center"><h4>${etList[i].etp_name}</h4></td>
				<td align="left"><h4><a href="recruit_detail_infor.jsp?id=${list1[i].recruit_no}">${list1[i].recruit_title}</a></h4>
				<a href="recruit_like_ok.jsp?id=${list1[i].recruit_no}">좋아요</a></td>
				<td align="center">${list1[i].hire_type}<br>${list1[i].ac_ability_no}<br>봉급&nbsp ${list1[i].income_qualification}<br>근무요일&nbsp${list1[i].recruit_day}</td>
				<td align="center">${list1[i].receive_ddate}</td>
			</tr>
		
		</c:forEach>
	</tbody>
	</table>
</body>
</html>