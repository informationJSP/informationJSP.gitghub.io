<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DBPKG.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String sql = "update member_tbl_02 set custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno= "
				+ Integer.parseInt(request.getParameter("custno"));
	Connection conn = db_connect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("custname"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("address"));
	pstmt.setString(4, request.getParameter("joindate"));
	pstmt.setString(5, request.getParameter("grade"));
	pstmt.setString(6, request.getParameter("city"));
	pstmt.executeUpdate();
	out.print("<script type='text/javascript'>location.href='userList.jsp'</script>");	
%>