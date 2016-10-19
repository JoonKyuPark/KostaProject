<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
            }
        }).open();
    }
    
    $(function(){
    	$("input#receive_sdate").datepicker();
    	$("input#receive_ddate").datepicker();
    	$("input#recruit_sdate").datepicker();
    	$("form#ETP_recruit_insert_form").on("submit", function(){
    		$("#free_place_radio").val($("#free_place_text"));
    		
    	});
    	
    	$("select#etp_email").on("change",function(){
    		$("input#etp_email").val($(this).val());
    	});
    	
    	$("input#etp_email").on("click", function(){
    		$(this).val("");
    	});
    	
    	$("button#modifyButton").on("click",function(){
    		$("form#actionForm").attr("action", "ETP_info_update.jsp");
    		$("form#actionForm").submit();
    	});
    });
</script>
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
		  <li><a href="ETP_recruit_condi.jsp">채용모집현황</a></li>
		</ul>
      </div>
      <form action="ETP_info_insert.jsp" method="POST" id="actionForm">
      <div class="col-md-8">
        <div class="row">
			<div class="form-group">
			  <label for="etp_name" class="col-md-3 control-label">기업회원번호</label>
			  <div class="col-md-8">
			    <input type="text" class="form-control" placeholder="기업 회원 번호" name="etp_name" id="etp_name">
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_name" class="col-md-3 control-label">기업이름</label>
			  <div>
			    <label for="etp_name" class="col-md-9">기업이름받아와</label>
			  </div>
			</div>
			<div class="form-group">
			  <div class="col-md-4">
			    <label for="etp_id">기업아이디</label>
			  </div>
			  <div class="col-md-8">
			    <label id="etp_id">아이디받아와</label>
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_tel_location" class="col-md-3">기업전화번호</label>
			  <div class="col-md-4">
			    <select class="form-control" name="etp_tel_location" id="etp_tel_location">
				  <option value="02">02</option>
				  <option value="031">031</option>
				  <option value="032">032</option>
			 	  <option value="041">041</option>
			   	  <option value="042">042</option>
			    </select>
			  </div>
			  <div class="col-md-4">
			    <input type="text" class="form-control" name="etp_tel" id="etp_tel_location">
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_email_id" class="col-md-3 control-label">기업이메일</label>
			  <div class="col-md-3">
			    <input type="text" class="form-control" name="etp_email_id" id="etp_email_id" placeholder="아이디">
			  </div>
			  <div class="col-md-3">
			    <input type="text" class="form-control" name="etp_email" id="etp_email" placeholder="이메일주소">
			  </div>
			  <div class="col-md-3">
			    <select class="form-control" name="etp_email" id="etp_email">
				  <option value="naver.com">naver.com</option>
				  <option value="nate.com">nate.com</option>
				  <option value="daum.net">daum.net</option>
			 	  <option value="hanmail.net">hanmail.net</option>
			 	  <option value="직접입력">직접입력</option>
			    </select>
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_kind" class="col-md-3 control-label">기업형태</label>
			  <div class="col-md-9">
			    <select class="form-control" name="etp_kind" id="etp_kind">
			      <option value="중소기업">중소기업(300명이하)</option>
			      <option value="중견기업">중견기업(300명이상)</option>
			      <option value="대기업">대기업</option>
			    </select>
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_registration_num" class="col-md-3 control-label">사업자등록번호</label>
			  <div class="col-md-9">
			    <input type="text" class="form-control" name="etp_registration_num" placeholder="사업자등록번호" id="etp_registration_num">
			  </div>
			</div>
			<div class="form-group">
			  <label for="delegator_name" class="col-md-3 control-label">대표자명</label>
			  <div class="col-md-9">
			    <input type="text" class="form-control" name="delegator_name" placeholder="대표자명" id="delegator_name">
			  </div>
			</div>
			<div class="form-group">
			  <label for="etp_field" class="col-md-3 control-label">기업업종(산업내용)</label>
			  <div class="col-md-9">
			    <select class="form-control" name="etp_field" id="etp_field">
			  	  <option value="IT">IT</option>
			  	  <option value="웹">웹</option>
			 	  <option value="자바개발자">자바개발자</option>
			 	  <option value="디비관리자">디비관리자</option>
				</select>
			  </div>
			</div>
			<div class="form-group">
			  <label for="employee_number" class="col-md-3 control-label">직원수</label>
			  <div class="col-md-8">
			    <input type="text" class="form-control" name="employee_number" id="employee_number">
			  </div>
			  <div class="col-md-1">명</div>
			</div>
			<div class="form-group">
			  <label class="col-md-3 control-label">기업주소</label>
			  <div class="row">
				<div class="col-md-3">
				  <input type="text" id="sample4_postcode" name="recruit_addr" class="form-control" placeholder="우편번호">
			  </div>
			  <div class="col-md-2">
			    <input type="button" name="etp_location" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
			  </div>
			  <div class="col-md-7"></div>
			  </div>
			  <div class="row">
			  <div class="col-md-3"></div>
			  <div class="col-md-4">
			    <input type="text" id="sample4_roadAddress" name="etp_location" class="form-control" placeholder="도로명주소">
			  </div>
			  <div class="col-md-4">
			    <input type="text" id="sample4_jibunAddress" name="etp_location" class="form-control" placeholder="지번주소">
			  </div>
			    </div>
			</div>
			<div class="form-group">
			  <label for="etp_capital" class="col-md-3 control-label">자본금</label>
			  <div class="col-md-4">
			    <input type="text" class="form-control" name="etp_capital" placeholder="자본금" id="etp_capital">
			  </div>
			  <div class="nol-md-5">만원</div>
			</div>
			<div class="form-group">
			  <label for="etp_sales" class="col-md-3 control-label">매출액</label>
			  <div class="col-md-9">
			    <input type="text" class="form-control" name="etp_sales" placeholder="매출액" id="etp_sales">
			  </div>
			</div>
			<div class="form-group">
			  <label for="clip_number" class="col-md-3 control-label">관심인원</label>
			  <div class="col-md-9">
			    <input type="text" class="form-control" name="clip_number" placeholder="괸심인원" id="clip_number">
			  </div>
			</div>
            <input type="submit" value="ㅇㅋ">
        </div>
      </div>
      </form>
      <div class="col-md-2">
        <button id="modifyButton">수정</button>
      </div>
    </div>
  </div>
</body>
</html>