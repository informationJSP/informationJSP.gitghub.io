<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<section>
		<h2>쇼핑몰회원관리프로그램</h2>
		<p>
		<%
		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/WEB-INF/input");
			reader = new BufferedReader(new FileReader(filePath));
			while (true) {
				String str = reader.readLine();
				if (str == null)
					break;
				out.println(str + "<br>");
			}
		} catch (FileNotFoundException fnfe) {
			out.println("파일이 존재하지 않습니다.");
		} catch (IOException ioe) {
			out.println("파일을 읽을수 없습니다.");
		} finally {
			try {
				reader.close();
			} catch (Exception e) {

			}
		}
		%>
		<p>
</section>
<footer>
	<h2>하단바임</h2>
</footer>
</body>
</html>