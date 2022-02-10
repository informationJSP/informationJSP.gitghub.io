<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.*" %>
<%
	Connection conn = db_connect.getConnection();
	String sql = "select max(custno) from member_tbl_02";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int num = rs.getInt(1)+1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/javascript.js"></script>
<title>Insert title here</title>
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
		<form name="Add" action="addP.jsp" method="get" onsubmit="return checkValue()">
			<h2>홈쇼핑 회원 등록</h2>
			<table id="addT">
				<tr><th>회원번호(자동발생)</th>
				<td><input type="text" name="custno" value="<%=num %>" readonly></td></tr>
				<tr><th>회원성명</th>
				<td><input type="text" name="custname"></td></tr>
				<tr><th>회원전화</th>
				<td><input type="text" name="phone"></td></tr>
				<tr><th>회원주소</th>
				<td><input type="text" name="address" ></td></tr>
				<tr><th>가입일자</th>
				<td><input type="text" name="joindate"></td></tr>
				<tr><th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="grade"></td></tr>
				<tr><th>도시코드</th>
				<td><input type="text" name="city"></td></tr>
				<tr><td colspan="2" id="button">
					<input type="submit" value="등록">
					<input type="button" value="조회" onclick="location.href='userList.jsp'">
					</td>
				</tr>
			</table>
		</form>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>