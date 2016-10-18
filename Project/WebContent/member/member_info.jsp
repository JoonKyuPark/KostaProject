
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");

//페이징 처리 
String pageNum = request.getParameter("pageNum");
if(pageNum == null){
	pageNum = "1";	
}
int requestPage = Integer.parseInt(pageNum);


//저장된 세션으로 기업번호를 가지고 오기 
int gid2 = Integer.parseInt((String)session.getAttribute("giup"));
ETP_Exam_Service service = ETP_Exam_Service.getInstance();
int gno = service.getGno(gid2);


//리스트 받아온 내용
ListModel listModel = service.getEtplist(gno, requestPage);
request.setAttribute("listModel", listModel);

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	
$(document).ready(function(){
	   $("#checkall").click(function(){
	      if($("#checkall").prop("checked")){
	         $("input[class=chk]").prop("checked",true);
	      }else{
	         $("input[class=chk]").prop("checked",false);
	      }
	   });
	});	
	
	
</script>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!------- BOOTSTRAP -------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<style>
.col-md-12
{
   border : 1px red solid;
}
</style>
<title>인재정보로그</title>
</head>
<body>
  <form action="detail.jsp" method="post">   
<div class="container">
   <div class="body-1">
      <h4>인재정보로그</h4>
      <div class="col-md-12">   
         <table id="mytable" class="table table-bordred table-striped">
            <tr>
               <th><input type="checkbox" id="checkall"/></th>
               <th>로그번호</th>
               <th>이미지</th>
               <th>회원이름</th>
               <th>로그날짜</th>
  
            </tr>
     
           <c:forEach var="Etp"  items="${listModel.list}">
           
            <tr>
             <td><input type="checkbox" class="chk" name = "member_log" value="${Etp.mem_logno }"/></td>
              <td>${Etp.mem_logno }</td>
                <td>${Etp.member_img }</td>
                <td>${Etp.member_name }</td>
                <td>${Etp.log_date }</td>   
        
            </tr>         
           </c:forEach>
         
               
         </table><!--table-->   
        </div><!--col_md_12-->
   </div><!--body-1-->
   <div class="body-2">
      <div class = "col-md-12">
         <input type="submit" value="삭제"/>
         <div class = "paging" align="center">
           
     <!-- 페이징 처리 -->
	<!-- 현재 페이지, 페이지당 글 수, 총 글 갯수, 총 페이지 수, 시작 페이지, 마지막 페이지 -->
	<!-- 이전페이지 -->
	<c:if test="${listModel.startPage > 5}">
		<a href="custoemr_info.jsp?pageNum=${listModel.startPage - 5}">[이전]</a>
	</c:if>
	
	<!-- 페이지 목록 -->
	<c:forEach var="pageNo" begin="${listModel.startPage}" end="${listModel.endPage}">
		<c:choose>
			<c:when test="${pageNo==listModel.requestPage}">
				<b>[${pageNo}]</b>
			</c:when>
			<c:otherwise>
				<a href="custemr_info.jsp?pageNum=${pageNo}">[${pageNo}]</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- 이후페이지 -->
	<c:if test="${listModel.endPage < listModel.totalPageCount}">
		<a href="custemr_info.jsp?pageNum=${listModel.startPage + 5}">[이후]</a>
	</c:if>
           
           
           
         </div>
      </div><!--col-md-12-->
   </div>
</div><!-- list container -->
    </form>   
</body>
</html>