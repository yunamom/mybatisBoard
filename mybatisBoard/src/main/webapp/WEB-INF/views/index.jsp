<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>∙ main ∙</title>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<header style="background-image:url('./img/main.jpeg')">
	<a style="text-align:right"href="./">
	<h1>good morning</h1>
	</a>
</header>
<nav>
	<ul>
		<li><a href="./board/list">∙ Board</a></li>
		<li><a href="#">∙ Login</a></li>
		<li><a href="#">∙ Join</a></li>
	</ul>
</nav>
<section>

	<c:if test="${userId eq null}">
		<a href="https://kauth.kakao.com/oauth/authorize
		?client_id=dcbb0a1210c36cd8cf1df0fe041c9951
		&redirect_uri=https://yunamom.duckdns.org/mybatisBoard/login
		&response_type=code">
			<img src="img/kakao_login_medium_narrow.png">
		</a>
	</c:if>
	<c:if test="${userId ne null}">
		<form name="logout" action="https://yunamom.duckdns.org/mybatisBoard/logout">
			<input type="submit" value="로그아웃">
		</form>
	</c:if>
	
</section>
</body>
</html>