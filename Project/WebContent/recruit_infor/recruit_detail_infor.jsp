<%@page import="recruit.infor.Recruit_Infor"%>
<%@page import="java.util.List"%>
<%@page import="infor.etp.model.Etp_Infor_Service"%>
<%@page import="infor.etp.model.Etp_Infor"%>
<%@page import="recruit.infor.Recruit_infor_Service"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = request.getParameter("id");
	int id1 = Integer.parseInt(id);

	Recruit_infor_Service riService = Recruit_infor_Service.getInstance();
	Recruit_Infor recruit = riService.deailRecruitService(id1);
	request.setAttribute("recruit", recruit);

	Etp_Infor_Service eiService = Etp_Infor_Service.getInstance();
	Etp_Infor ei = null;
	ei = eiService.detailEtpService(recruit.getEtp_no());
	request.setAttribute("ei", ei);

	System.out.println(ei.getEtp_location());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>부트스트랩</title>
<link rel="stylesheet" href="../css/sweetalert.css">
<link rel="stylesheet" type="text/css"
	href="recruit_detail_infor_style.css" />
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/kfonts2.css" rel="stylesheet">
<style>
h2 {
	margin: 20px 0
}

.tab-content {
	padding: 10px 0;
}
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
<style type="text/css">
#titleImg {
	max-width: 100px;
	height: auto;
}

#logoImg {
	max-width: 200px;
	height: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
}

.table td {
	border: 1px solid #bcbcbc;
	padding: 5px 10px;
}
hr{
	width:100%;
	text-align:center
}
</style>
</head>
<body onLoad="reverse_counter();">

	<div class="container">
		<h2>채용상세페이지</h2>
		<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#nav1" data-toggle="tab">${list1.get(0).hire_type}
						채용정보</a></li>
				<li><a href="#nav2" data-toggle="tab">기업정보 상세 보기</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>
		<div class="tab-content">

			<div class="tab-pane active" id="nav1">
				<h3>${recruit.recruit_title}</h3>
				<h3>${ei.etp_name}<br>
				</h3>
				<b>${ei.etp_field}<br></b> <b>매출액 ${ei.etp_sales}<br></b>
				<b>직원수 ${ei.employee_number}<br></b> <b>기업형태 ${ei.etp_kind}<br></b>
				<b>기업주소 ${ei.etp_location}<br></b> <b>대표자명
					${ei.delegator_name}<br>
				</b> <b>경력 ${recruit.career_check} ${recruit.career_period}<br></b>
				<b>학력 ${recruit.ac_ability_no}<br></b> <b>급여
					${recruit.min_pay} ~ ${recruit.max_pay}<br>
				</b> <b>직급 ${recruit.recruit_position}<br></b> <b>근무요일
					${recruit.recruit_day}<br>
				</b>

		<input type="button" id="button1" onclick="button1_click();" value="지원하기" />
		<input type="button" id="button2" onclick="button2_click();" value="입사 지원 현황" />

				<center>
					<form name="counter">
						<input type="text" name="counter_box" size="55">
					</form>
				</center>

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
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne"> 모집요강 </a>
											</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<h4>모집요강</h4>
											<table class="table">
												<tr>
													<th>담당업무</th>
													<td>${recruit.hire_type}</td>
												</tr>
												<tr>
													<th>근무형태</th>
													<td>${recruit.hire_type}</td>
												</tr>
												<tr>
													<th>모집인원</th>
													<td>${recruit.recruit_number}</td>
												</tr>
												<tr>
													<th>급여</th>
													<td>${recruit.min_pay}만원~${recruit.max_pay}만원</td>
												</tr>
												<tr>
													<th>지원자격</th>
													<td>${recruit.min_pay}</td>
												</tr>
											</table>
										</div>
									</div>
								</div>

								<div class="panel panel-info">
									<div class="panel-heading">
										<h2 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo"> 접수기간 및 방법 </a>
											</h4>
									</div>


									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">
											<h4>접수기간 및 방법</h4>
											<table class="table">
												<tr>
													<th>접수기간</th>
													<td>${recruit.receive_sdate}~${recruit.receive_ddate}</td>
												</tr>
												<tr>
													<th>접수방법</th>
													<td>${recruit.receive_way}</td>
												</tr>
											</table>
											<h4>전형절차 및 제출서류</h4>
											<table class="table">
												<tr>
													<th>전형절차</th>
													<td>${recruit.hire_type}</td>
												</tr>
												<tr>
													<th>제출서류</th>
													<td>${recruit.hire_type}</td>
												</tr>
											</table>

										</div>
									</div>
								</div>


								<div class="panel panel-info">
									<div class="panel-heading">
										<h2 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree"> 근무환경 </a>
											</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<h4>근무환경</h4>
											<table class="table">
												<tr>
													<th>근무지역</th>
													<td>${recruit.recruit_addr}</td>
												</tr>
												<tr>
													<th>근무요일</th>
													<td>${recruit.recruit_day}</td>
												</tr>
												<tr>
													<th>근무부서</th>
													<td>${recruit.recruit_number}</td>
												</tr>
												<tr>
													<th>복리후생</th>
													<td>${recruit.min_pay}만원~${recruit.max_pay}만원</td>
												</tr>
												<tr>
													<th>기타 급여조건</th>
													<td>${recruit.min_pay}</td>
												</tr>
											</table>

										</div>
									</div>
								</div>

								<div class="panel panel-info">
									<div class="panel-heading">
										<h2 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseFour"> 문의처 </a>
											</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">
											<h4>문의처</h4>
											<table class="table">
												<tr>
													<th>담당자 정보</th>
													<td>${recruit.hire_type}</td>
												</tr>
												<tr>
													<th>전화및 FAX</th>
													<td>${ei.etp_tel}</td>
												</tr>
												<tr>
													<th>회사주소</th>
													<td>${ei.etp_location}</td>
												</tr>
											</table>

										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- ----------------------------------------------아코디언--------------------------------------------- -->
						<div id="map" style="width: 100%; height: 350px;"></div>
						<p style="margin-top: 5px">
							<em class="link"> <a href="javascript:void(0);"
								onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
									혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요. </a>
							</em>
						</p>
					</div>

					<div class="tab-pane" id="tab2">
						<h4>접수기간/방법</h4>

						<table class="table">
							<tr>
								<th>접수기간</th>
								<td>${recruit.receive_sdate}~${recruit.receive_ddate}<br>
									주의! 마감시간은 기업의 사정, 조기마감 등 다양한 원인으로 언제든지 변경 될 수 있으며, 우리잡의 마감시간이
									100% 정확하지 않을 수 있으니, <b>반드시 마감일 하루 전 까지 입사지원 하시기를 권장</b>합니다.
								</td>

							</tr>
							<tr>
								<th>우편지원</th>
								<td>${ei.etp_location}</td>
							</tr>
							<tr>
								<th>내사지원</th>
								<td>${ei.etp_location}</td>
							</tr>
							<tr>
								<th>전화지원</th>
								<td>${ei.etp_tel}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="nav2">

				<table class="table">
					<tr>
						<td><center>
								<img src="../images/people.png" alt="..."
									class="img-responsive img-rounded" id="logoImg"> <br>
								<center>
									로고 <br> ${ei.etp_kind}
								</center></td>
						<td><center>
								<img src="../images/people.png" alt="..."
									class="img-responsive img-rounded" id="titleImg"> <br>
								매출액<br> ${ei.etp_sales}
							</center></td>
						<td><center>
								<img src="../images/people.png" alt="..."
									class="img-responsive img-rounded" id="titleImg"> <br>
								설립년차<br> ${ei.etp_sales}
							</center></td>
						<td><center>
								<img src="../images/people.png" alt="..."
									class="img-responsive img-rounded" id="titleImg"> <br>
								사원수<br> ${ei.employee_number}
							</center></td>
						<td><center>
								<img src="../images/people.png" alt="..."
									class="img-responsive img-rounded" id="titleImg"> <br>
								기업형태 <br> ${ei.etp_kind}
							</center></td>
					</tr>
				</table>

				<h4>${ei.etp_name} 기업에 입사해야 하는 이유</h4>
				<hr class="one">
				<b>관심기업으로 명 이상 찜한 선망 받는 기업<br></b>
				<b> ${ei.etp_kind}</b>
				<hr class="one">
				<h3>기본정보</h3>
				<hr class="one">
				<hr class="one">
				<h3>고용현황</h3>
				<hr class="one">
				<hr class="one">
				<h3>근무환경</h3>
				<hr class="one">
				<hr class="one">
				<h3>취업가이드</h3>
				<hr class="one">
				<hr class="one">
				<h3>기업 History</h3>
				<hr class="one">
				<hr class="one">
				<h3>기업위치</h3>
				<hr class="one">
				<hr class="one">
				<div id="map" style="width: 100%; height: 350px;"></div>
				<p style="margin-top: 5px">
					<em class="link"> <a href="javascript:void(0);"
						onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
							혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요. </a>
					</em>
				</p>

			</div>
		</div>




	</div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7f371f73f647744ce5b5552611d68ab9&libraries=services"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
	<script src="../js/sweetalert.min.js"></script>
	 
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript">
	 function button1_click() {
		 swal({   title: " ",   text: "님의 우리잡 기본 이력서로 온라인 지원 됩니다. ",   type: "warning",
	 			showCancelButton: true,   confirmButtonText: "지원하기",   closeOnConfirm: false }, 
	 				 function(){  
	 				location.href="../join_receive/join_receive_insert.jsp?id=<%=recruit.getRecruit_no()%>";
	 				
	 				swal("지원 성공!", "님의 우리잡 이력서로 온라인 지원 성공 했습니다.", "success"); 
	 				
	 			});
	 }
	 
	 function button2_click() {
		 location.href="join_receive_form.jsp";
	 }
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.4969117,127.03292), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	// 주소로 좌표를 검색합니다
	geocoder.addr2coord("<%=ei.getEtp_location()%>", function(status, result) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {
	
	        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	        
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new daum.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:1px 0 ;">우리회사</div>'
	        });
	        infowindow.open(map, marker);
			
	    } 
	}); 
    
    
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
         
         function reverse_counter(){
        	 today = new Date();
        	 d_day = new Date("<%=recruit.getReceive_ddate()%> 00:00:00");
        	 days = (d_day - today) / 1000 / 60 / 60 / 24;
        	 daysRound = Math.floor(days);
        	 hours = (d_day - today) / 1000 / 60 / 60 - (24 * daysRound);
        	 hoursRound = Math.floor(hours);
        	 minutes = (d_day - today) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
        	 minutesRound = Math.floor(minutes);
        	 seconds = (d_day - today) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) -
        	 (60 * minutesRound);
        	 secondsRound = Math.round(seconds);
        	 sec = " 초."
        	 min = " 분, "
        	 hr = " 시간, "
        	 dy = " 일, "
        	 document.counter.counter_box.value = " 남은 시간 : " + daysRound + 
        	 dy + hoursRound + hr + minutesRound + min + secondsRound + sec;
        	 newtime = window.setTimeout("reverse_counter();", 1000);
       }
  
         
            
	</script>
</body>
</html>