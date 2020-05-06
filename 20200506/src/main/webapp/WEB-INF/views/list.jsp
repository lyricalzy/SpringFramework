<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>전체 게시글</h2>
<hr>
<table>
<tr>
	<th>게시글 번호</th><th>게시글 제목</th><th>게시글 내용</th><th>게시글 작성자</th>
</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.id}</a></td>
		<td><a href="select.do?id=${dto.id}">${dto.title}</td>
		<td>${dto.content}</td>
		<td>${dto.writer}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>