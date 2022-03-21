<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>∙ board write ∙</title>
<link rel="stylesheet" type="text/css" href="../style.css" />
</head>
<body onload='document.frm.title.focus()'>
<%@include file="../include/top.jsp" %>
<section>
<div class="wrapper">
<div class="container">
	<h1></h1>
	<form name="frm" method="post">
		<table class="write">
			<tr>
				<td><input type="text" name="title" id="title" placeholder="제목을 입력하세요."></td>
			</tr>
			<tr>
				<td colspan="2">
				<textarea name="title" placeholder="내용을 입력하세요."></textarea>
				</td>
			</tr>
		</table>
		<button class="btn" onclick="location='list'">취소</button>
		<button class="btn">등록</button>
	</form>
</div>
</div>
</section>
</body>
</html>