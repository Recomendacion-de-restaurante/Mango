<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Member Change Page</title>
</head>
<body>

	<div class="row">


		<div class="col-md-4">
			<c:import url="../template/managerSide.jsp"></c:import>
		</div>
		
	<div class="col-md-8">
	<h1>회원변경 관리</h1>
	
	<table class="table memberChange-list">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>상태</td>
		</tr>
		<c:forEach items="${memberChange}" var="m">
			<tr>
				<td>${m.id }</td>
				<td><a class="link-dark text-decoration-none" href="./memberChangeDetail?id=${m.id}">${m.name}</a></td>
				<td>${m.businessOk}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>