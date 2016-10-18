<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function()
{
	d_timer();
}
window.onunload = function()
{
	clearTimeout(timer);
}
var	timer		=	setInterval(function() {
	d_timer()
	}, 1000);
var	hour	=	{$time['h']};    //    초기치(시간)
var	minute	=	{$time['i']};    //    초기치(분)
var	second	=	{$time['s']};    //    초기치(초)


function d_timer()
{
	second--;
	if ( 0 > second )
	{
		if ( 0 >= minute )
		{
			if ( 0 >= hour )
				clearTimeout(timer);
			else
			{
				hour--
				minute	=	59;
				second	=	59;
			}
		} else {
			minute--;
			second	=	59;
		}
	}
	if ( 0 > second )
		second	=	0;
		html_hour	=	document.getElementById('hour');

	if ( 0 != hour )
		html_hour.innerHTML	=	"<span>" + hour + "</span><span>시간</span>";
		html_minute	=	document.getElementById('minute');
		
	if ( 0 != second )
		html_minute.innerHTML	=	"<span>" + minute + "</span><span>분</span>";
		html_second	=	document.getElementById('second');
		html_second.innerHTML	=	"<span>" + second + "</span><span>초</span>";
}

</script>
</head>
<body>
	<div id="hour">12</div>
	<div id="minute">12</div>
	<div id="second">12</div>
</body>
</html>