<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Result</title>
	<style>
	table{
	width : 80%; height: 620px; margin: 0 auto;
	}
	table tr{
	width : 100%; height: 50px; border: 1px solid blue;
	}
	table th{
	width : 100%; height: 30px; border: 1px solid blue;
	}
	table tr td{
	width : 100%; height: 30px; border: 1px solid blue;
	}
	</style>
</head>
	<body>
	<table>
	<tr style="height: 10%; text-align: center;">
		<td colspan="5">네비게이션</td>
	</tr>
	<tr style="height: 10%">
		<td style="width: 20%; text-align: center;">버거킹</td>
		<td style="width: 20%; text-align: center;">카카오뱅크</td>
		<td style="width: 20%; text-align: center;">비트캠프</td>
		<td style="width: 20%; text-align: center;">SK 텔레콤</td>
		<td style="width: 20%; text-align: center;">로또</td>
	</tr>
	<tr style="height: 60%" >
		<td colspan="5">
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
	<form action="index.jsp">
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
		 	</td>
  		</tr>
	</table>

</body>
</html>
