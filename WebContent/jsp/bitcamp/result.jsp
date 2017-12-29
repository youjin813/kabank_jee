<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.kabank.jee.domain.AttendBean" %>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String sql = "";
List<AttendBean> result = new ArrayList<>();
	try{
		Class.forName("Oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe");
		stmt = conn.createStatement();
		sql = "SELECT * FROM tab";
		rs = stmt.executeQuery(sql);
		List<String> list = new ArrayList<>();
		while(rs.next()){
			String temp = rs.getString("TNAME");
			list.add(temp);
		}
		boolean exist = false;
		for(String s :list){
			if(s.equalsIgnoreCase("attend")){
				exist = true;
				break;
			}
		}
		if(!exist){
			sql = "CREATE TABLE Attend("
				+"id VARCHAR2(20),"
				+"week VARCHAR2(20),"
				+"status VARCHAR2(20)"
				+")";
		stmt.executeUpdate(sql);
		}else{
			rs = stmt.executeQuery("SELECT id, week, status");
			AttendBean a = new AttendBean();
			String id = rs.getString("id");
			String week = rs.getString("week");
			String status = rs.getString("status");
			a.setId(id);
			a.setWeek(week);
			a.setStatus(status);
			result.add(a);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>		
<body>
	
</body>
</html>
<%
System.out.print("=======찍고옴=======");
//pageContext.forward("main.jsp");
%>s