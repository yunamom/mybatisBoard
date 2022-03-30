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
<body>
<%@include file="../include/top.jsp" %>
<section>
<div class="wrapper">
<div class="container">
	<h1>${ board.title }</h1>
		<table class="list">
			<tr>
				<td style="text-align: left">
				작성자 : ${ board.name }
				</td>
				<td style="text-align: right">
				조회수 : ${ board.hits }
				</td>
			</tr>
			<tr>
				<td colspan="2" class="content" valign="top">		
				<pre>${board.content}</pre>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: left">
				${ board.rdate }
				</td>
			</tr>
		</table>
	
		<button style="margin-top: 1rem" class="btn" onclick="history.back()">뒤로가기</button>
		<!-- <button type="submit" class="btn" onclick="fn_submit(); return false;">등록</button> -->
	
</div>
</div>
</section>
</body>
</html>