<%@page import="recruit.infor.Recruit_Infor"%>
<%@page import="java.util.List"%>
<%@page import="recruit.infor.Recruit_infor_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <%
 
 	Recruit_infor_Service riService=Recruit_infor_Service.getInstance();
 	System.out.println(riService);
 	System.out.println("Ddddgg");
 	List<Recruit_Infor> list=riService.listRecruitService();
	request.setAttribute("list1", list);
 	System.out.println("jhkjh"+list.get(0).getHire_type());
 
 %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-kr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>부트스트랩</title>

        <link rel="stylesheet" type="text/css" href="recruit_detail_infor_style.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/kfonts2.css" rel="stylesheet">
    <style>
    h2 { margin: 20px 0}
    .tab-content {padding: 10px 0;}

    </style>
    <script type="text/javascript">
		$(document).ready(function() {
			  $('.collapse.in').prev('.panel-heading').addClass('active');
			  $('#accordion, #bs-collapse')
			    .on('show.bs.collapse', function(a) {
			      $(a.target).prev('.panel-heading').addClass('active');
			    })
			    .on('hide.bs.collapse', function(a) {
			      $(a.target).prev('.panel-heading').removeClass('active');
			    });
			});
	</script>
  </head>
<body>

<div class="container">  
   <h2>채용상세페이지 </h2>
    <nav class="navbar navbar-default" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
     
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
         <li class="active"><a href="#nav1" data-toggle="tab">${list1.get(0).hire_type} 채용정보</a></li>  
        <li><a href="#nav2" data-toggle="tab">기업정보 상세 보기</a></li>  
        </ul>
      </div><!-- /.navbar-collapse -->
    </nav>
         <div class="tab-content">
        
      	<div class="tab-pane active" id="nav1"> 
      							<table border="1" cellpadding="0" cellspacing="0">
								 <tr height="30">
									<th width="50">번호</th>
									<th width="250">제목</th>
									<th width="150">작성자</th>
									<th width="150">작성일</th>
								</tr>
						      	<c:forEach var="list2" items="${list1}">
								<tr height="30">
									<td align="center">${list2.hire_type}</td>
									<td align="left">bb</td>
									<td align="center">${list2.career_check}</td>
									<td align="center">${list2.ac_ability_no}</td>
								</tr>	
								</c:forEach>
								</table> 
								
								
	<ul class="nav nav-tabs">
      <li class="active"><a href="#tab1" data-toggle="tab">채용정보</a></li>
      <li><a href="#tab2" data-toggle="tab">접수기간/방법</a></li>
     </ul>
        <div class="tab-content">
        
	      	<div class="tab-pane active" id="tab1"> 
	      	
			<!-- ----------------------------------------------아코디언--------------------------------------------- -->
			<div class="container"> 
	
			       <div class="panel-group" id="accordion">
			       
					         <div class="panel panel-info">
					            <div class="panel-heading">
					               <h2 class="panel-title">
					                  <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
					                  			 모집요강
					                  </a>
					               </h4>
					            </div>
					            <div id="collapseOne" class="panel-collapse collapse in">
					               <div class="panel-body">
									         <table border="1" cellpadding="0" cellspacing="0">
											 <tr height="30">
												<th width="50">번호</th>
												<th width="250">제목</th>
												<th width="150">작성자</th>
												<th width="150">작성일</th>
												<th width="150">작성일</th>
											</tr>
									      	<c:forEach var="list2" items="${list1}">
											<tr height="30">
												<td align="center">${list2.hire_type}</td>
												<td align="left">bb</td>
												<td align="center">${list2.career_check}</td>
												<td align="center">${list2.ac_ability_no}</td>
												<th width="150"><a href="recruit_like_ok.jsp?id=${list2.recruit_no}">좋아요</a></th><del></del>
											</tr>	
											</c:forEach>
											</table> 
					               </div>
					            </div>
					         </div>
					         
					         <div class="panel panel-info">
					            <div class="panel-heading">
					               <h2 class="panel-title">
					                  <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
					                     	접수기간 및 방법
					                  </a>
					               </h4>
					            </div>
					            
					            
					            <div id="collapseTwo" class="panel-collapse collapse">
					               <div class="panel-body">
					                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
					
					                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
					               </div>
					            </div>
					         </div>
			         
			         
					         <div class="panel panel-info">
					            <div class="panel-heading">
					               <h2 class="panel-title">
					                  <a data-toggle="collapse" data-parent="#accordion"  href="#collapseThree">
					                     		근무환경
					                  </a>
					               </h4>
					            </div>
					            <div id="collapseThree" class="panel-collapse collapse">
					               <div class="panel-body">
					                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
					
					                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
					               </div>
					            </div>
					         </div>
					         
					         <div class="panel panel-info">
					            <div class="panel-heading">
					               <h2 class="panel-title">
					                  <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
					                     		문의처
					                  </a>
					               </h4>
					            </div>
					            <div id="collapseFour"  class="panel-collapse collapse" >
					               <div class="panel-body">
					                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
					
					                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
					               </div>
					            </div>
					         </div>
			      </div>
	  		</div>
	    
	<!-- ----------------------------------------------아코디언--------------------------------------------- -->
	  		</div>
		  		
		      <div class="tab-pane" id="tab2">
		      <h3>탭 2</h3>
		      dfdf
		      </div>
    </div>
     </div>
	    <div class="tab-pane" id="nav2"> 
	   dfdfdd
	    </div>
    </div>
    
   
   

</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
         $(function () { $('#collapseFour').collapse({
            toggle: false
         })});
         $(function () { $('#collapseTwo').collapse({
            toggle: false
         })});
         $(function () { $('#collapseThree').collapse({
            toggle: false
         })});
         $(function () { $('#collapseOne').collapse({
            toggle: false
         })});
    </script>
    
</body>
</html>