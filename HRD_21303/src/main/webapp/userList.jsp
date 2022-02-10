<%@page import="DBPKG.db_connect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	Connection conn = db_connect.getConnection();
	String sql = "select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd'),"
			+ "decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원'), city from member_tbl_02 order by custno";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	ResultSet rs = pstmt.executeQuery();
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
<section>
		<h2>회원목록수정/조회</h2>
		<table id="userList">
		<tr><th>회원번호</th><th>회원성명</th><th>회원전화</th><th id="long">회원주소</th><th>가입일자</th><th id="long">고객등급</th><th id="long">도시코드</th><th>수정/삭제</th></tr>
			<%while(rs.next()){ %>
				<tr>
					<td><a href="update.jsp?custno=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
					<td id="button"><input type="button" value="수정" onclick="location.href='update.jsp?custno=<%=rs.getString("custno")%>'">
					<input type="button" value="삭제" onclick="checkDel(<%= rs.getString("custno")%>)"></td>
				</tr>
			<%} %>
			
		</table>
</section>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>