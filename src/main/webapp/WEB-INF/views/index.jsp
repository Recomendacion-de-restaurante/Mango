<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/bootstrap_css.jsp"></c:import>
<c:import url="./template/mango_header.jsp"></c:import>
</head>
<body>
	<h1>hi!</h1>
	<h3>${member.id} 님 환영합니다</h3>
	
<c:import url="./template/cdn_script.jsp"></c:import>
</body>
</html>