<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DBPKG.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String sql = "delete from member_tbl_02 where custno= " +  
	Integer.parseInt(request.getParameter("custno"));
	Connection conn = db_connect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	if(pstmt.executeUpdate()==0){
		out.print("<script type='text/javascript'>location.href='userList.jsp'</script>");	
	}
%>