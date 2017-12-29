<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.MemberBean"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"></jsp:useBean>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
Connection conn = null;
Statement stmt = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setPass(request.getParameter("id"));
	member.setName(request.getParameter("id"));
	member.setSsn(request.getParameter("id"));
	member.setPhone(request.getParameter("id"));
	member.setProfile(request.getParameter("id"));
	member.setAddr(request.getParameter("id"));
	String sql = String.format("INSERT INTO Member("
			+"id ,"
			+"pass ,"
			+"name ,"
			+"ssn ,"
			+"phone ,"
			+"email ,"
			+"profile ,"
			+"addr "
			+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",
			member.getId(),member.getPass(),member.getName(),
			member.getSsn(),member.getPhone(),member.getEmail(),
			member.getProfile(),member.getAddr());
	stmt.executeUpdate(sql);
	
}catch(Exception e){
	e.printStackTrace();
}
pageContext.forward("../index.jsp");
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
아이디:<%=member.getId() %>	
비밀번호:<%=member.getPass() %>	
이름:<%=member.getName() %>	
핸드폰번호:<%=member.getPhone() %>	
이메일:<%=member.getEmail() %>	
프로필:<%=member.getProfile() %>	
주소:<%=member.getAddr() %>	
</body>
</html>


