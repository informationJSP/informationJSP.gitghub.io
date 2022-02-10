<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/javascript.js">
</script>
<title>회원조회</title>
</head>
<body>
<header>쇼핑몰 회원관리 ver 1.0</header>
<nav>
	<a href="add.jsp">회원등록</a>
	<a href="userList.jsp">회원목록수정/조회</a>
	<a href="userSearch.jsp">회원정보조회</a>
	<a href="SalSelect.jsp">회원매출조회</a>
	<a href="index.jsp">홈으로</a>
</nav>
		<form name="searchF" action="search.jsp" method="get" onsubmit="checkSearch(custno.value)">
			<h2>홈쇼핑 회원 조회</h2>
			<table id="search">
				<tr><th>회원번호(자동발생)</th>
				<td><input type="text" name="custno"></td></tr>
				<tr><td colspan="2" id="button">
					<input type="submit" value="조회">
					<input type="button" value="삭제" onclick="checkDel(custno.value)">
					</td>
				</tr>
			</table>
		</form>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>