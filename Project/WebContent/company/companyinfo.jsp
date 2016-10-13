<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<style>
.col-md-12
{
   border : 1px red solid;
}
</style>
<title>채용정보로그</title>
</head>
<body>
<div class="container">
   <div class="body-1">
      <h4>채용정보로그</h4>
      <div class="col-md-12">   
         <table id="mytable" class="table table-bordred table-striped">
            <tr>
               <th><input type="checkbox" id="checkall" /></th>
               <th>사진</th>
               <th>이름</th>
               <th>나이</th>
               <th>1차 합격 여부</th>
               <th align="center">채용지원</th>
            </tr>
            <tr>
                <td><input type="checkbox" class="checkthis"/></td>
                <td>data</td>
                <td>data</td>
                <td>data</td>
                <td>data</td>   
                <td>
                   <button type="button" class="btn btn-primary" data-toggle="button">지원하기</button>
                   <button type="button" class="btn btn-primary" data-toggle="button">예약하기</button>
                </td>         
            </tr>         
         </table><!--table-->   
        </div><!--col_md_12-->
   </div><!--body-1-->
   <div class="body-2">
      <div class = "col-md-12">
         <button type="button" class="btn btn-primary" data-toggle="button">삭제하기</button>
         
         <div class = "paging" align="center">
            <ul class="pagination">
               <li class="disabled">
                  <a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
               </li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li>
                  <a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a>
               </li>
            </ul>
         </div>
      </div><!--col-md-12-->
   </div>
</div><!-- list container -->
</body>
</html>