<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.MemberBean"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"></jsp:useBean>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%

Connection conn = null;
Statement stmt = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setPass(request.getParameter("pass"));
	member.setName(request.getParameter("name"));
	member.setSsn(request.getParameter("ssn"));
	member.setPhone(request.getParameter("phone"));
	member.setEmail(request.getParameter("email"));
	member.setProfile("default_profile.jpg");
	member.setAddr(request.getParameter("addr"));
	sql = String.format("INSERT INTO Member("
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
	e.printStackTrace();}
pageContext.forward("member_list.jsp");
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
생년월일:<%=member.getSsn() %>
성별:<%=member.getSsn() %>
핸드폰번호:<%=member.getPhone() %>
이메일:<%=member.getEmail() %>
프로필:<%=member.getProfile() %>
주소:<%=member.getAddr() %>
</body>
</html>
