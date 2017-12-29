<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JDBC TEST</title>
</head>
<body>
	<% 
	String count = "";
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	Statement stmt = conn.createStatement();
	String sql = "SELECT COUNT * FROM tab";
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		count = rs.getString("tname");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	테이블 수는 <%=count %> 입니다.
</body>
</html>