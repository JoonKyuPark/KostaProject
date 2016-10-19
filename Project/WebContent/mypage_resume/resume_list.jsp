<%@page import="job.resume.ResumeAll"%>
<%@page import="java.util.List"%>
<%@page import="job.resume.Resume_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<link href="../css/resume.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript">
	
</script>
<%
Resume_Dao dao = Resume_Dao.getInstance();
List<ResumeAll> list = dao.ResumeList();
request.setAttribute("list", list);
%>
<title>����������_�̷¼� ����Ʈ</title>
</head>
<body>
<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a href="../main/mainDisplay.jsp">Ȩ</a></li>
			<li><a href="../main/update.jsp">����������</a></li>
			<li><a href="../ETP_Exam/Etp_Exam_Main.jsp">����</a></li>
			<li><a>ä�������˻�</a></li>
			<li><a>����Ʈ��Ī</a></li>
			<li><a>����ä������</a></li>
			<li><a href="../mypage_resume/resume_list.jsp">�̷¼����</a></li>
			<li><a>ä����</a></li>
		</ul>
	</div>

	<div id="container" class="col-md-12">
		<div class="left_aside col-md-2">
			<ul class="aside_ul">
				<li>�޴�1</li>
				<li>�޴�1</li>
				<li>�޴�1</li>
				<li>�޴�1</li>
				<li>�޴�1</li>
				<li>�޴�1</li>
			</ul>
		</div>

		<div class="content col-md-8">

			<h3 class="resume_h3 col-md-12">�̷¼� ����</h3>

			<a href="resume_reg.jsp"><button class="resume_reg col-md-offset-10 col-md-2">�̷¼� ���</button></a>

			<table class="resume_list_table table col-md-12">
				<tr>
					<th class="col-md-2">��ȣ</th>
					<th class="col-md-6">����</th>
					<th class="col-md-2">����</th>
					<th class="col-md-2">�ۼ���</th>
				</tr>
				<c:forEach items="${list}" var="i" >
				<tr>
				<c:set var="re_date" value="${i.resume_date}"/>
				<c:set var="re_d" value="${fn:substring(re_date,0,10)}"/>		<!-- 2016-10-17���� -->
				<td class="col-md-2">${i.resume_no}</td>
					<td class="col-md-6">
						<a href="resume_detail.jsp?seq=${i.resume_no}">
							${i.resume_title}
						</a>
					</td>
					<td class="col-md-2">
						<a href="resume_update.jsp?seq=${i.resume_no}">����</a>
						 | ����
					</td>
					<td class="col-md-2">${re_d}</td>
				</tr>
			</c:forEach>
			</table>

			<button type="button" class="btn btn-info">�⺻ �̷¼� ����</button>
			<button type="button" class="btn btn-default">�μ��ϱ�</button>
		</div>
		<div class="right_aside col-md-2">������ ����</div>

	</div>
</body>
</html>