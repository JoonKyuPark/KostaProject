<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="question_insertOk.jsp" method="post">
			<label>문제명</label>
			<input type="text" name="question_name" placeholder="내용을 입력해주세요.">
			<label>할당 시간</label>
			<input type="number" name="question_hour" value = 0 min=0 max=10>시간
			<input type="number" name="question_minute" value = 0 min=0 max=59>분
			<input type="number" name="question_second" value = 0 min=0 max=59>초
			<textarea rows="7" cols="70"> </textarea>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>