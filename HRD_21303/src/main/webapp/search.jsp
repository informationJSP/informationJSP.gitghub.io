<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = db_connect.getConnection();
	String sql = "select custno 회원번호, custname 회원성명, phone 회원전화, address 회원주소, to_char(joindate, 'yyyy-mm-dd') 가입일자,"
			+ "decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원') 고객등급, city 도시코드 from member_tbl_02 where custno = " 
			+ Integer.parseInt(request.getParameter("custno"));
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
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
<%if(rs.next()) {%>
<table id="searchP">
<caption>회원정보조회</caption>
<% for(int i =1; i<=7; i++) {%>
		<tr>
			<th><%=rsmd.getColumnName(i) %></th>
			<td><%=rs.getString(i) %></td>
		</tr>
	<%} %>
<%} %>
</table>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>