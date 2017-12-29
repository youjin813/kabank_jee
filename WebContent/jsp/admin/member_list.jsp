<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.kabank.jee.domain.MemberBean" %>
<%
Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql ="";
List<MemberBean> result = new ArrayList<>();        
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql= "SELECT * FROM tab";
	rs = stmt.executeQuery(sql);
	List<String> list = new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;
	for(String s :list){
		if(s.equalsIgnoreCase("member")){
			exist = true;
			break;
		}
	}
		if(!exist){
			sql = "CREATE TABLE Member(" 
					+"id VARCHAR2(20) PRIMARY KEY,"
					+"pass VARCHAR2(20),"
					+"name VARCHAR2(20),"
					+"ssn VARCHAR2(20),"
					+"phone VARCHAR2(20),"
					+"email VARCHAR2(20),"
					+"profile VARCHAR2(20),"
					+"addr VARCHAR2(20)"
					+")";
			stmt.executeUpdate(sql);		
		}else{
			rs = stmt.executeQuery(
					"SELECT id, pass, name, ssn, phone, email, profile, addr FROM Member");
			while(rs.next()){
				MemberBean m = new MemberBean();
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				String ssn = rs.getString("ssn");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String profile = rs.getString("profile");
				String addr = rs.getString("addr");
				m.setId(id);				
				m.setPass(pass);
				m.setName(name);
				m.setSsn(ssn);
				m.setPhone(phone);
				m.setEmail(email);
				m.setProfile(profile);
				m.setAddr(addr);
				result.add(m);
			}
		}
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(stmt != null){
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
	}
	if(conn != null){
		try{conn.close();}catch(Exception e){e.printStackTrace();}
	}
}

%>
<%@ include file="../common/head.jsp"%>
<link rel="stylesheet" href="../../css/admin_main.css" />
<body>
<h1>관리자 메인 페이지</h1>
<div id="admin_wrapper">
<aside id="admin_aside">
	<a>회원관리</a>
</aside>
<section id="admin_section">
<h1>회원관리</h1>
	<article>
	<select name="" id="member_search" >
		<option>ID</option>
		<option>이름</option>
		<option>성별</option>
		</select>
		<input type="text" />
		<button>검색</button>
	<table id="admin_table">
		<tr>
			<th>NO</th>
			<th>ID</th>
			<th>이 름</th>
			<th>생년월일</th>
			<th>성 별</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>주 소</th>
		</tr>
		<%
		for(int i=0;i<result.size();i++){
			%>
			<tr>
			<td>00</td>
			<td><%=result.get(i).getId()%></td>
			<td><%=result.get(i).getName()%></td>
			<td><%=result.get(i).getSsn()%></td>
			<td>성별</td>
			<td><%=result.get(i).getPhone()%></td>
			<td><%=result.get(i).getEmail()%></td>
			<td><%=result.get(i).getAddr()%></td>
			</tr>
			<% 
		}
		%>
		
	</table>
	<button id="add_member_btn">추가</button>
	</article>
</section>
<script src="../../js/admin/member_list.js"></script>
</div>
 <%@ include file="../common/footer.jsp"%>
</body>
</html>