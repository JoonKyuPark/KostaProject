<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript"></script>


<link rel="stylesheet" type="text/css" href="${contextPath}/css/datepicker3.css" />
<script type="text/javascript" src="${contextPath}/bootstrap/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${contextPath}/bootstrap/js/bootstrap-datepicker.kr.js"></script>
<script type="text/javascript">
$('#dateRangePicker').datepicker({
	 format: "yyyy-mm-dd",
	 language: "kr"
	 });
</script>
<title>Insert title here</title>
</head>
<body>
<div id="container" class="col-md-12">
		<div class="left_aside col-md-2">
			<ul class="aside_ul">
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
				<li>메뉴1</li>
			</ul>	
		</div>
		
		<div class="content col-md-8">
			<form class="resume_form form-horizontal">
				<div class="form-group col-md-12">
				    <label for="resume_title_input" class="col-md-2 control-label">제목</label>
				    <div class="col-md-10">
				      <input type="text" class="form-control" id="resume_title_input" placeholder="제목을 입력해주세요" name="resume_title">
				    </div>
				    <br><br><br>
				    <label for="resume_income_input" class="col-md-2 control-label">희망연봉</label>
				    <div class="col-md-10">
				      <input type="text" class="form-control" id="resume_income_input" placeholder="희망연봉" name="hope_income">
				    </div>
				    <br><br><br>
				    
				   <div class="md-col-12">
					    <label class="resume_volun_field_label col-md-2 control-label">지원분야</label>
					    <div class="resume_volun_field_form col-md-10">  
						    <input type="checkbox" value="정규직" class="">정규직&nbsp;
						    <input type="checkbox" value="계약직">계약직&nbsp;
						    <input type="checkbox" value="병역특례">병역특례&nbsp;
						    <input type="checkbox" value="인턴직">인턴직&nbsp;
						    <input type="checkbox" value="프리랜서">프리랜서&nbsp;
				
				   		 </div>	<!-- resume_volun_field_form 지원분야 체크박스 -->
				    </div>
				    <br><br><br>
				 
				    	<label for="resume_career_etp_name_input" class="resume_career_etp_name_label col-md-2 control-label">회사명</label>
				    	<div class="resume_career_etp_name_div col-md-10">
				    		<input type="text" id="resume_career_etp_name_input" class="form-control"> 
				    	</div>
				    <br><br><br>
				    
				   <div class="input-group input-append date" id="dateRangePicker"> </div>

				    
				    
				    
				    
				    
				    
				    
			  	</div>  <!-- form-group --> 
			</form> <!-- ~~resume_form -->
			
			
		
		

		</div>
		
		<div class="right_aside col-md-2">
		
		
		</div>
		
		
		
		
		
		
			
	
	
	
	
</div>

</body>
</html>