<%@page import="join.receive.Join_Receive"%>
<%@page import="join.receive.Join_Receive_Service"%>
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
	Join_Receive_Service jrService = Join_Receive_Service.getInstance();
	System.out.println(jrService);
	System.out.println("Ddddgg");
	List<Join_Receive> list = jrService.listJoinService();
	request.setAttribute("list1", list);
	
	Recruit_infor_Service riService=Recruit_infor_Service.getInstance();
	Recruit_Infor ri=null;
	List<Recruit_Infor> riList = new ArrayList<Recruit_Infor>();
	for (int i = 0; i < list.size(); i++) {
		ri = riService.deailRecruitService(list.get(i).getRecruit_no());
		riList.add(ri);
	} 
	request.setAttribute("riList", riList); 
	
	Etp_Infor_Service eiService = Etp_Infor_Service.getInstance();
	Etp_Infor ei = null;
	List<Etp_Infor> etList = new ArrayList<Etp_Infor>();
	for (int i = 0; i < list.size(); i++) {
		ei = eiService.detailEtpService(riList.get(i).getEtp_no());
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
	 <link rel="stylesheet" type="text/css" href="join_receive_sytle.css" />
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
	<table class="table table-hover">
	<thead>
		<tr height="30">
			<th align="center" width="100"><center><div class="checks etrans"><input type="checkbox" id="allCheck"><label for="allCheck"></label></div></center></th>
			<th width="100"><center>회사명</center></th>
			<th width="250"><center>지원내역</center></th>
			<th width="100"><center>지원일</center></th>
			<th width="50"><center>열람여부</center></th>
		</tr>
	</thead>
	<tbody>		
		<c:forEach  var="i" begin="0" end="${list1.size()-1}" step="1">	
		<tr height="30">
			<td align="center">
			<div class="checks etrans"> <input type="checkbox" id="${list1[i].recruit_no}" name="box">  <label for="${list1[i].recruit_no}"></label> </div></td>
				<td align="center"><h4><a href="../recruit_infor/recruit_detail_infor.jsp?id=${list1[i].recruit_no}">${etList[i].etp_name}</a></h4></td>
				<td align="left"><h4>${riList[i].recruit_title}</h4><br>지원자:명<br>지원서류:이력서</td>
				<td align="center">${list1[i].receive_date}</td>
				<td align="center">${list1[i].reading}<br><a>지원취소</a></td>
			</tr>
		
		</c:forEach>
	</tbody>
	</table>
</body>
</html>