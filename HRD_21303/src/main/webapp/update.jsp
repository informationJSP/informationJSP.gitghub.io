<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.*" %>
<%
	int i = 1;
	Connection conn = db_connect.getConnection();
	request.setCharacterEncoding("UTF-8");

	String sql = "select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd'),"
			+ "grade, city from member_tbl_02 where custno= "
			+ Integer.parseInt(request.getParameter("custno"));
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/javscript.js">

</script>
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
<section>
	<form method="get" name = "update" action="updateP.jsp" onsubmit="return checkUpdate()">
	<h2>홈쇼핑 회원 정보 수정</h2>
		<table id="updateT">
				<tr><th>회원성명</th>
				<td><input type="text" name="custno" value="<%=rs.getString(1) %>" readonly></td></tr>
				<tr><th>회원성명</th>
				<td><input type="text" name="custname" value="<%=rs.getString(2) %>"></td></tr>
				<tr><th>회원전화</th>
				<td><input type="text" name="phone" value="<%=rs.getString(3) %>"></td></tr>
				<tr><th>회원주소</th>
				<td><input type="text" name="address" value="<%=rs.getString(4) %>"></td></tr>
				<tr><th>가입일자</th>
				<td><input type="text" name="joindate" value="<%=rs.getString(5) %>"></td></tr>
				<tr><th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="grade" value="<%=rs.getString(6) %>"></td></tr>
				<tr><th>도시코드</th>
				<td><input type="text" name="city" value="<%=rs.getString(7) %>"></td></tr>
				<tr><td colspan="2"  id="button"><input type="submit" value="수정">
				<input type="button" value="조회" onclick="location.href='userList.jsp'">
				<input type="button" value="삭제" onclick="checkDel(<%= rs.getString("custno")%>)"></td>
				</tr> 
		</table>
	</form>
</section>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>