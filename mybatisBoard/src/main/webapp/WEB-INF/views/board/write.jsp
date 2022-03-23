<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>∙ board write ∙</title>
<script src="../script/jquery-1.12.4.js"></script>
<script src="../script/jquery-ui.js"></script> 
<script src="../script/script.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body onload='document.frm.title.focus()'>
<%@include file="../include/top.jsp" %>
<section>
<div class="wrapper">
<div class="container">
	<h1></h1>
	<form:form method="post" modelAttribute="board">
	
		<table class="write">
		
			<tr>
				<td>
				<form:input path="title" placeholder="제목을 입력하세요." />
				</td>
			</tr>
			<tr>
				<td>
				<form:input path="name" placeholder="이름"/>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
				<form:textarea path="content" placeholder="내용을 입력하세요." />
				</td>
			</tr>
		</table>
	
		<button type="button" class="btn" onclick="history.back()">취소</button>
		<button type="submit" class="btn" onclick="fn_submit()">등록</button>
	
	</form:form>
</div>
</div>
</section>
</body>
</html>