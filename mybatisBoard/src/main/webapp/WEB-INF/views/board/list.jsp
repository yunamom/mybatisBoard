<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<c:url var="R" value="../" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>∙ 게시판 목록 ∙</title>
<link rel="stylesheet" href="${R}css/style.css">
</head>
<body>
<%@include file="../include/top.jsp" %>
<section>
<div class="wrapper">
<div class="container">
	<h1></h1>
	<div class="left"><div class="box">전체 글(${ count })</div></div>
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
		<tr onClick="location='detail?unq=${ board.unq }&${ pagination.queryString }'" >
			<td class="title">${ board.title }</td>
			<td>${ board.name }</td>	
		</tr>
		</c:forEach>
	</table>
	<div class="wrapper">
	<my:pagination pageSize="${ pagination.sz }" recordCount="${ pagination.recordCount }"
	queryStringName="pg" /></div>
</div>
</div>
</section>
</body>
</html>