<%@page import="job.main.Member_info"%>
<%@page import="job.main.LogginService"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("login") == null) {
		response.sendRedirect("mainDisplay.jsp");
	} else {
		boolean login = (boolean) session.getAttribute("login");
		boolean kind = (boolean) session.getAttribute("kind");
		System.out.println(kind);
		if (login) {
			if (!kind) {
					//LogginService service = LogginService.getInstance();
					Member_info m = (Member_info)session.getAttribute("member");
					request.setAttribute("m", m);
				}else {
				response.sendRedirect("mainDisplay.jsp");
			}
		} 
			else {
			response.sendRedirect("mainDisplay.jsp");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function search() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
				// 예제를 참고하여 다양한 활용법을 확인해 보세요.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수
				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					fullAddr = data.roadAddress;

				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					fullAddr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if (data.userSelectedType === 'R') {
					//법정동명이 있을 경우 추가한다.
					if (data.bname !== '') {
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if (data.buildingName !== '') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('addr_no').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr').value = fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('detail_addr').focus();
			}
		}).open();
	}
</script>
<title>회원정보 상세입력</title>
</head>
<body>
	<div name="main_menu" class="container">
		<ul class="nav nav-pills">
			<li><a href="../main/mainDisplay.jsp">홈</a></li>
			<li><a href="../main/update.jsp">마이페이지</a></li>
			<li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
			<li><a>채용정보검색</a></li>
			<li><a>스마트매칭</a></li>
			<li><a>맞춤채용정보</a></li>
			<li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
			<li><a>채용등록</a></li>
		</ul>
	</div>

	<form action="../main/updateForm.jsp" method="post">
		<!-- 	<div class="container">
			<div class="row col-md-1">사진:</div>
			<input type="image" class="col-md-1" value="사진" name="member_img">
		</div> -->
		<div class="container">
			<input type="hidden" class=" col-md-2" value="${m.member_id}"
				name="member_id">
		</div>
		<div class="container">
		<%-- <input type="hidden" class=" col-md-2" value="${m.member_id}"
				disabled="disabled" name="member_id"> --%>
			<div class="row col-md-1">아이디:</div>
			<input type="text" class=" col-md-2" value="${m.member_id}"
				readonly="readonly">
		</div>
		<div class="container">
			<div class="row col-md-1">비밀번호:</div>
			<input type="password" class="col-md-2" value="${m.member_pwd}"
				required="required" name="member_pwd">
		</div>
		<div class="container">
		<%-- <input type="hidden" class="col-md-2" value="${m.member_name}"
				disabled="disabled" name="member_name"> --%>
			<div class="row col-md-1">이름:</div>
			<input type="text" class="col-md-2" value="${m.member_name}"
				readonly="readonly" name="member_name" >
		</div>
		<div class="container">
			<div class="row col-md-1">생년월일:</div>
			<input type="text" class="col-md-2" value="${m.member_birth}"
				placeholder="예)19000101" required="required" name="member_birth">
		</div>
		<div class="container">
			<div class="row col-md-1">이메일:</div>
			<input type="email" class="col-md-2" value="${m.member_email}"
				required="required" name="member_email">
		</div>
		<div class="container">
			<div class="row col-md-1">휴대폰:</div>
			<input type="tel" class="col-md-2" value="${m.member_telephone}"
				required="required" name="member_telephone">
		</div>
		<div class="container">
			<div class="row col-md-1">성별:</div>
			<div class="row col-md-1">
				남<input type="radio" class="col-md-1" required="required"
					checked="checked" value="남" name="member_gender">
			</div>
			<div class="row col-md-1">
				여<input type="radio" class="col-md-1 " required="required" value="여"
					name="member_gender">
			</div>
		</div>
		<div class="container">
			<div class="row col-md-1">전화번호:</div>
			<input type="text" class="col-md-2" value="${m.member_phone}"
				required="required" name="member_phone">
		</div>
		<div class="container">
			<div class="row col-md-1">우편번호:</div>
			<input type="text" class="col-md-2" value="${m.member_addr_no}"
				id="addr_no" required="required" name="member_addr_no"> <input
				class="col-md-1" type="button" value="주소검색" onclick="search()">
		</div>
		<div class="container">
			<div class="row col-md-1">주소:</div>
			<input type="text" class="col-md-2" value="${m.member_addr}"
				id="addr" name="member_addr">
		</div>
		<div class="container">
			<div class="row col-md-1">상세주소:</div>
			<input type="text" class="col-md-2" value="${m.member_detail_addr}"
				id="detail_addr" name="member_detail_addr">
		</div>
		<div class="container">
			<div class="row col-md-1">홈페이지:</div>
			<input type="text" class="col-md-2" value="${m.member_homepage}"
				name="member_homepage" required="required" placeholder="없을시 없음 입력">
		</div>

		<div class="container">
			<div class="row col-md-1">자격증수:</div>
			<input type="text" class="col-md-2" value="${m.license}"
				name="member_license" required="required" placeholder="없을시 0 입력">
		</div>

		<div class="container">
			<input type="submit" value="수정완료">
		</div>
	</form>


</body>
</html>