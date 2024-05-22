<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="background-color: #f2f2f2; padding: 20px; border-radius: 5px;">
	<form action="contact" method="post">
	
	<p>氏名 ※必須</p>
	<input type="text" name="name" required>
	
	<p>会社</p>
	<input type="text" name="company">
	
	<p>メールアドレス ※必須</p>
	<input type="text" name="email" required>
	
	<p>お問合せ内容 ※必須</p>
	<textarea id="comment" name="comment" rows="5" cols="60" required></textarea>
	
	<p>メルマガ配信</p>
	<p><input type="checkbox" name="mel" value="総合案内">総合案内</p>
	<p><input type="checkbox" name="mel" value="セミナー案内">セミナー案内</p>
	<p><input type="checkbox" name="mel" value="求人採用情報">求人採用情報</p>
	
	<p>資料請求希望</p>
	<input type="radio" id="yes" name="document" value="yes" checked>Yes
	<input type="radio" id="no" name="document" value="no">No
	<br>
	
	<input type="submit" value="送信">
	
	</form>
</body>
</html>