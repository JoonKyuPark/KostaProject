<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>��ũ���� ä�����</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="coponent.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/custom2.css" rel="stylesheet">
     <link href="../css/kfonts2.css" rel="stylesheet">
 <script src="../js/bootstrap.min.js"></script>    
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="jquery.tableCheckbox.js"></script>
<script type="text/javascript">
$( document ).ready( function() {
  $( '.check-all' ).click( function() {
    $( '.ab' ).prop( 'checked', this.checked );
  } );
} );
</script>
  </head>
<body>
<div class="container">

  
</div>
<div class="container">  
 <h4 class="text-primary">��ũ���� ä�����  </h4>
 <table class="table table-hover">
  <thead>
   <tr>
    <td><input type="checkbox" name="all" class="check-all"></td>
     <th>��ũ����</th>
     <th>ȸ���</th>
     <th>����</th>
     <th>������</th>
     <th>�������</th>
   </tr>
   </thead>
   <tr>
      <td><input type="checkbox" name="cb1" class="ab"></td>
     <td>���̺� �׽�Ʈ  ���̺� �׽�Ʈ ���̺� �׽�Ʈ <button class="btn btn-primary" type="button" toggle-data="button">���ƿ�</button></td>
     <td>ȫ�浿</td>
      <td>ȫ�浿</td>
       <td>ȫ�浿</td>
       <td>ȫ�浿</td>
   </tr>
   <tr>
      <td><input type="checkbox" name="cb2" class="ab"></td>
     <td>���̺� �׽�Ʈ  ���̺� �׽�Ʈ ���̺� �׽�Ʈ</td>
     <td>�Ӳ��� </td>
      <td>ȫ�浿</td>
       <td>ȫ�浿</td>
       <td>ȫ�浿</td>
   </tr>
   <tr>
    <td><input type="checkbox" name="cb3" class="ab"></td>
     <td>���̺� �׽�Ʈ  ���̺� �׽�Ʈ ���̺� �׽�Ʈ</td>
     <td>������ </td>
      <td>ȫ�浿</td>
       <td>ȫ�浿</td>
       <td>ȫ�浿</td>
   </tr>  
    <tr>
    <td><input type="checkbox" name="cb4" class="ab"></td>
     <td>���̺� �׽�Ʈ  ���̺� �׽�Ʈ ���̺� �׽�Ʈ</td>
     <td>������ </td>
      <td>ȫ�浿</td>
       <td>ȫ�浿</td>
       <td>ȫ�浿</td>
   </tr>   
    <tr>
     <td><input type="checkbox" name="cb5" class="ab"></td>
     <td>���̺� �׽�Ʈ  ���̺� �׽�Ʈ ���̺� �׽�Ʈ</td>
     <td>������ </td>
      <td>ȫ�浿</td>
       <td>ȫ�浿</td>
       <td>ȫ�浿</td>
   </tr>       
 </table>

</div>

</body>
</html>