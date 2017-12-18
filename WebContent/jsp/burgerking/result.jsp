<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/navigation.jsp"%>
<%
	String hamburger = request.getParameter("hamburger");
	String coke = request.getParameter("coke");
	String chip = request.getParameter("chip");
	String coffee = request.getParameter("coffee");
	String menu = request.getParameter("menu");
	String count = request.getParameter("count");
	String price = "";
	String total = "";
	if(count.equals("")){
%>		
<div style="width : 300px; height: 200px; margin: 0 auto;">
	
	<p>메뉴와 수량을 입력해주세요.</p>
	<form action="main.jsp">
		<input type="submit" value="뒤로 가기" />
	</form>
</div>

<% 		
	}else{
	
	switch(menu){
	case "햄버거":
		price = hamburger;
		total = Integer.parseInt(hamburger)*Integer.parseInt(count)+"";
		break;
	case "콜라":
		price = coke;
		total = Integer.parseInt(coke)*Integer.parseInt(count)+"";		
		break;
	case "감자칩":
		price = chip;
		total = Integer.parseInt(chip)*Integer.parseInt(count)+"";		
		break;
	case "커피":
		price = coffee;
		total = Integer.parseInt(coffee)*Integer.parseInt(count)+"";		
		break;
	}
%>
<div style="width : 300px; height: 200px; margin: 0 auto;">
	<p>
		<%= menu %> <%= count %> <%= price %> <br />
 		---------------------------- <br />
 		결제금액 <%= total %>
	</p>
	<form action="">
		<input type="submit" value="결제" />
	</form>
</div>
<% 
	}
%>
<%@ include file="../common/footer.jsp"%>
