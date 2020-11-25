<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WSWebHost</title>
<link rel="stylesheet" href="css/host.css">
</head>


<body>
<c:if test="${empty login }">
<p>不正ログインの恐れ</p>
</c:if>

	<%@ include file="Header.jsp"%>
	<div class="login" class=""></div>

</body>
</html>
