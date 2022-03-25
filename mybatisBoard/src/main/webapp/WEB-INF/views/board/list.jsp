<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>∙ 게시판 목록 ∙</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<%@include file="../include/top.jsp" %>
<section>
<div class="wrapper">
<div class="container">
	<h1></h1>
	<div class="left"><div class="box">전체 글(${ total })</div></div>
	<div class="right"><a href="write" class="btn">write</a></div>
	<table class="list">
	<colgroup>
		<col width="90%">
		<col width="10%">
	</colgroup>
		<tr>
			<th>Title</th>
			<th colspan="2">name</th>		
		</tr>
		
		<c:forEach var="board" items="${ boards }">
		<tr onClick="location='detail?unq=${ board.unq }'" >
			<td class="title">${ board.title }</td>
			<td>${ board.name }</td>
			<!-- <td><button type="button" class="smallbtn" onclick="location='delete?id=${ department.id }' ">
			삭 제</button></td> -->
		</tr>
		</c:forEach>
	</table>
</div>
</div>
</section>
</body>
</html>