<%@page import="kosta.model.ListModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.List" %>
<%@ page import = "kosta.service.ReceiveService" %>
<%@ page import = "kosta.model.View_information" %>
<%@ page import = "kosta.model.Dummy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!------- BOOTSTRAP -------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js">
////////////////////////////////////////////////////////////
$(function(){
    //전체선택 체크박스 클릭
	$("#checkall").click(function()
		{
			//만약 전체 선택 체크박스가 체크된상태일경우
			if($("#checkall").prop("checked"))
			{
				//해당화면에 전체 checkbox들을 체크해준다
				$("input[type=checkbox]").prop("checked",true);
				// 전체선택 체크박스가 해제된 경우
			}
			else {
			//해당화면에 모든 checkbox들의 체크를해제시킨다.
			$("input[type=checkbox]").prop("checked",false);
		}
	})
	$('#remove').click( function()
	{
		$('input.ab:checked').each(function(){$(this).parants('tr').remove()});
	});
})
////////////////////////////////////////////////////////////
</script>
<title>채용정보로그</title>
</head>
<body>
<%
	//현재 접속된 페이지
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
	   pageNum = "1";   
	}
	int requestPage = Integer.parseInt(pageNum);


	//1서비스 객체 생성
	ReceiveService service = new ReceiveService();
	
	//2-1 dummy.jsp에서 아이디 받아옴 
	String b_id = (String)session.getAttribute("b_id");	
	//2-2 b_id(아이디)에 해당하는 회원번호를 받아옴 
	int member_no = service.getMember_Number(b_id);
	
	//드...드리겠습니다.
	ListModel listModel = service.getList(member_no, requestPage);
	
	request.setAttribute("listModel", listModel);

%>
<div class="container">
	<div class="body-1">
		<h4>채용정보로그</h4>
		<div class="col-md-12">	
			<table id="mytable" class="table table-bordred table-striped">
				<tr>
					<th><input type="checkbox" id="checkall" /></th>
					<th>열람한날짜</th>
					<th>기업이름</th>
					<th>채용정보</th>
					<th align="center">채용지원</th>
				</tr>
				<c:forEach var = "receive" items = "${ listModel.list }">
					<tr class = "contents">
						<td><input type="checkbox" class="checkthis"/></td>
						<td>${ receive.recruit_log_date }</td>
						<td>${ receive.etp_name }</td>
						<td>${ receive.recruit_title }</td>
					
						<td><button type="button" class="btn btn-primary" data-toggle="button">지원하기</button></td>
						<td><button type="button" class="btn btn-primary" data-toggle="button">예약하기</button></td>
					</tr><!--  -->	
				</c:forEach>
			</table><!--table-->	
        </div><!--col_md_12-->
	</div><!--body-1-->
	<div class="body-2">
		<div class = "col-md-12">
			<button type="button" class="btn btn-primary" data-toggle="button" id = "remove">삭제하기</button>
			<div class = "paging" align="center">
   <!-- 페이징 처리 -->
   <!-- 현재 페이지, 페이지당 글 수, 총 글 갯수, 총 페이지 수, 시작 페이지, 마지막 페이지 -->
   <!-- 이전페이지 -->
   <c:if test="${listModel.startPage > 5}">
      <a href="company_info.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
   </c:if>
   
   <!-- 페이지 목록 -->
   <c:forEach var="pageNo" begin="${listModel.startPage}" end="${listModel.endPage}">
      <c:choose>
         <c:when test="${pageNo==listModel.requestPage}">
            <b>[${pageNo}]</b>
         </c:when>
         <c:otherwise>
            <a href="registration.jsp?pageNum=${pageNo}">[${pageNo}]</a>
         </c:otherwise>
      </c:choose>
   </c:forEach>
   
   <!-- 이후페이지 -->
   <c:if test="${listModel.endPage < listModel.totalPageCount}">
      <a href="registration.jsp?pageNum=${listModel.startPage + 5}">[이후]</a>
   </c:if>

	</div>
		</div><!--col-md-12-->
	</div>
</div><!-- list container -->
</body>
</html>