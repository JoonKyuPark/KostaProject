<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<!------- BOOTSTRAP -------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!------- JQUERY -------->
<!-- css -->
<link rel="stylesheet" href="ETP_Mypage.css" type="text/css"
	media="screen" />

<head>
<meta charset="UTF-8">
<title>채용공고등록</title>
</head>
<body>
	<div class="container">
		<header>
			<h3>헤더</h3>
		</header>
		<div class="row">
			<div class="col-md-2">
				<ul class="mypage_bar">
					<li><a href="#">채용공고등록</a></li>
					<li><a href="#">스크랩</a></li>
					<li><a href="#">맞춤인재검색</a></li>
					<li><a href="#">최근본인재정보</a></li>
				</ul>
			</div>
			<div class="col-md-8">
				<h1 class="head">채용공고등록</h1>
				<input type="text" class="form-control" id="headline"
					placeholder="채용제목을 입력해주세요">
				<div class="row" id="recruit_main">
					<div class="col-md-2" id="hire_list">
						<h5>고용형태</h5>
						<h5>모집인원</h5>
						<h5>급여조건</h5>
					</div>
					<div class="col-md-10" id="hire_answer">
						<div id="hires">
							<span><input name="hire" type="checkbox" value="regular">정규직</span>
							<span><input name="hire" type="checkbox" value="contract">계약직</span>
							<span><input name="hire" type="checkbox" value="intern">인턴</span>
							<span><input name="hire" type="checkbox"
								value="dispatched">파견직</span> <span><input name="hire"
								type="checkbox" value="subcontract">도급</span> <span><input
								name="hire" type="checkbox" value="freelancer">프리랜서</span> <span><input
								name="hire" type="checkbox" value="part-time">아르바이트</span> <span><input
								name="hire" type="checkbox" value="trainee">연수생/교습생</span> <span><input
								name="hire" type="checkbox" value="military_service">병역특례</span>
							<span><input name="hire" type="checkbox"
								value="individual_business">위촉직/개인사업자</span>
						</div>
						<div class="recruits_radio">
							<span><input name="recruits" type="radio"><input
								type="text">명</span> <span><input name="recruits"
								type="radio">0명</span> <span> <input name="recruits"
								type="radio">00명
							</span> <span><input name="recruits" type="radio">000명</span>
						</div>
						<div class="salary_requirements">
							<div class="row">
								<div class="col-sm-3">
									<select class="form-control">
										<option>연봉</option>
										<option>주급</option>
										<option>월급</option>
										<option>일급</option>
										<option>시급</option>
										<option>건별</option>
									</select>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" placeholder="최소급여">
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" placeholder="최대급여">
								</div>
								<div class="col-sm-3"></div>
							</div>
						</div>
					</div>
				</div>
				<h2>지원자격</h2>
				<div class="row" id="qualification_main">
					<div class="col-md-2" id="qualification_list">
						<h5>경력사항</h5>
						<h5>최종학력</h5>
					</div>
					<div class="col-md-10" id="qualification_answer">
						<span><input name="creer_list" type="checkbox">신입</span>
						<span><input name="creer_list" type="checkbox">경력</span>
						<div class="row" id="career">
						  <div class="col-md-1">
						    <img src="ETP_images/register_comm_1.png">
						  </div>
						  <div class="col-md-3">
						    <input type="text" class="form-control">
						  </div>
						  <div class="col-md-4">
						    년 이상 경력자
						  </div>
						  <div class="col-md-4"></div>
						</div>
						<select class="form-control">
							<option>--선택--</option>
							<option>학력무관</option>
							<option>초등학교졸업</option>
							<option>중학교졸업</option>
							<option>대학교졸업(2,3년제)</option>
							<option>대학교졸업(4년제)</option>
							<option>대학원석사졸업</option>
							<option>대학원박사졸업</option>
						</select>
					</div>
				</div>
			</div>

			<div class="col-md-1"></div>
		</div>
		<footer>
			<h3>footer</h3>
		</footer>
	</div>
</body>
</html>