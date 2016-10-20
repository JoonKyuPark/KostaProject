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
<title>Insert title here</title>
</head>
<body>
  <div class="container">
    <header>
      <div name="main_menu" class="container">
      <ul class="nav nav-pills">
         <li><a href="../main/mainDisplay.jsp">홈</a></li>
         <li><a href="../main/update.jsp">마이페이지</a></li>
         <li><a href="../ETP_Exam/Etp_Exam_Main.jsp">시험</a></li>
         <li><a>채용정보검색</a></li>
         <li><a href="../main/smart.jsp">스마트매칭</a></li>
         <li><a>맞춤채용정보</a></li>
         <li><a href="../mypage_resume/resume_list.jsp">이력서목록</a></li>
         <li><a>채용등록</a></li>
      </ul>
   </div>
    </header>
    <div class="row">
      <div class="col-md-2">
        <ul class="mypage_bar">
		  <li><a href="ETP_recruit_infor.jsp">채용공고등록</a></li>
		  <li><a href="ETP_recruit_clip.jsp">채용스크랩</a></li>
		  <li><a href="#">맞춤인재검색</a></li>
		  <li><a href="#">최근본인재정보</a></li>
		  <li><a href="ETP_info.jsp">기업정보확인</a></li>
		</ul>
      </div>
      <div class="col-md-8">
        <h2>전체스크랩</h2>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr class="clip_list">
        <td><input type="checkbox">목록 </td>
          <td>사진</td>
          <td>이력서</td>
          <td>나이</td>
          <td>경력</td>
          <td>학력</td>
          <td>연봉</td>
          <td>특기사항</td>
          <td>스크랩일</td>
          <td>평가및메모</td>
        </tr>
        <tr>
          <td>3</td>
          <td>4</td>
        </tr>
        </table>
      </div>
      <div class="col-md-2"></div>
    </div>
	<footer>
	  <h3>footer</h3>
	</footer>
	</div>
</body>
</html>