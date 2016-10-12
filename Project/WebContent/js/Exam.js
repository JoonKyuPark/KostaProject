function multiSending(X,y){
	X.action = y;
	X.method = "post";
	X.encoding = "multipart/form-data";
	X.submit();	
}