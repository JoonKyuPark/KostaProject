
<%@page import="Etp.mypage.Recruit_Infor_Dao"%>
<%@page import="Etp.mypage.Recruit_Infor_Service"%>
<%@page import="Etp.mypage.Recruit_Infor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="recruit_Infor" class="Etp.mypage.Recruit_Infor"></jsp:useBean>
<jsp:setProperty name="recruit_Infor" property="*"></jsp:setProperty>
<%
	Recruit_Infor_Service recruit_Infor_Service = Recruit_Infor_Service.getInstance();
	String recruit_number = request.getParameter("recruit_number");
	
	if(!(recruit_number.equals("0") || recruit_number.equals("00") || recruit_number.equals("000"))){
		recruit_Infor.setRecruit_number(request.getParameter("free_place"));
	}
	
	recruit_Infor.setEtp_no(1);
	
	recruit_Infor_Service.insert_recruit_infor(recruit_Infor);
	out.println(recruit_Infor);
	
	/* Recruit_Infor recruit_Infor = new Recruit_Infor();
	
	//채용공고제목
	
	String recruit_title = request.getParameter("recruit_title");
	recruit_Infor.setRecruit_title(recruit_title);
	System.out.println("채용공고제목"+recruit_title);

	//고용형태
	String [] hire_type = request.getParameterValues("hire_type");
	recruit_Infor.setHire_type(hire_type);
	//모집인원
	String recruit_number = request.getParameter("recruit_number");
	recruit_Infor.setRecruit_number(recruit_number);
	//급여조건
	String income_qualification = request.getParameter("income_qualification");
	
	//최소급여
	int min_pay = Integer.parseInt(request.getParameter("min_pay"));
	//최대급여
	int max_pay = Integer.parseInt(request.getParameter("max_pay"));
	//경력사항
	String [] career_check = request.getParameterValues("career_check");
	//경력년수
	int career_period = Integer.parseInt(request.getParameter("career_period"));
	//최종학력
	String ac_ability_no = request.getParameter("ac_ability_no");
	//채용분야
	String recruit_field = request.getParameter("recruit_field");
	//접수시작일
	String receive_sdate = request.getParameter("receive_sdate");
	//접수마감일
	String receive_ddate = request.getParameter("receive_ddate");
	//접수방법
	String [] receive_way = request.getParameterValues("receive_way");
	//채용근무지역
	String [] recruit_addr = request.getParameterValues("recruit_addr");
	//채용근무요일
	String recruit_day = request.getParameter("recruit_day");
	//지원자격
	//String [] recruit_qual = request.getParameterValues("recruit_qual");
	//광고여부
	String ads = request.getParameter("ads");
	//채용직급/직책
	String recruit_position = request.getParameter("recruit_position");
	
	
	
	
	//채용정보번호
	//기업회원번호
	
	//공고등록일/공고삭제일? */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>