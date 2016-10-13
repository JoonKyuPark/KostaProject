<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
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
 <div class="container1">  
    <h2>채용상세페이지 </h2>
    <ul class="nav nav-tabs">
      <li class="active"><a href="#tab1" data-toggle="tab">채용정보</a></li>
      <li><a href="#tab2" data-toggle="tab">접수기간/방법</a></li>
     </ul>
        <div class="tab-content">
        
      	<div class="tab-pane active" id="tab1">  
      	
		 <div class="container">
		  <div class="col-md-12 col-sm-12">
		    <h3>Accordion collapse with rotating icon</h3>
		    <div class="panel-group wrap" id="accordion" role="tablist" aria-multiselectable="true">
		      <div class="panel">
		        <div class="panel-heading" role="tab" id="headingOne">
		          <h4 class="panel-title">
		        		<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						8
		        		</a>
		      	  </h4>
		        </div>
		        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		          <div class="panel-body">
		          7
		          </div>
		        </div>
		      </div>
		      <!-- end of panel -->
		
		      <div class="panel">
		        <div class="panel-heading" role="tab" id="headingTwo">
		          <h4 class="panel-title">
		        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				0
		        </a>
		      </h4>
		        </div>
		        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		          <div class="panel-body">
		          1
		          </div>
		        </div>
		      </div>
			<!-- end of panel -->
		      <div class="panel">
		        <div class="panel-heading" role="tab" id="headingThree">
		          <h4 class="panel-title">
		        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				2
		        </a>
		      </h4>
		        </div>
		        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
		          <div class="panel-body">
		          3
		          </div>
		        </div>
		      </div>
		      <!-- end of panel -->
		
		      <div class="panel">
		        <div class="panel-heading" role="tab" id="headingFour">
		          <h4 class="panel-title">
		        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
		      	4
		        </a>
		      </h4>
		        </div>
		        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
		          <div class="panel-body">
		          5
		          </div>
		        </div>
		      </div>
		      <!-- end of panel -->
		    </div>
		   <!--  panel-group -->
		  </div>
  		</div>
  	</div>
  		
  		
      <div class="tab-pane" id="tab2">
      <h3>탭 2</h3>
      dfdf
      </div>
   
</div>

</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>


</body>
</html>