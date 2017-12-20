<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.kabank.jee.domain.BurgerKingBean"%>
<jsp:useBean id="hamburger" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="coke" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="chip" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="bagle" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="salad" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<jsp:useBean id="coffee" class="com.kabank.jee.domain.BurgerKingBean" scope="request"></jsp:useBean>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/nav.jsp"%>
<section>
<article>
<%
	String hamburgerPrice = request.getParameter("hamburger");
	String cokePrice = request.getParameter("coke");
	String chipPrice = request.getParameter("chip");
	String baglePrice = request.getParameter("bagle");
	String saladPrice = request.getParameter("salad");
	String coffeePrice = request.getParameter("coffee");
	
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String chipCount = request.getParameter("chip-count");
	String bagleCount = request.getParameter("bagle-count");
	String saladCount = request.getParameter("salad-count");
	String coffeeCount = request.getParameter("coffee-count");
	
	String place = request.getParameter("place");
	
	hamburger.setMenu("햄버거");
	hamburger.setPrice(hamburgerPrice);
	hamburger.setCount(hamburgerCount);

	chip.setMenu("감자튀김");
	chip.setPrice(chipPrice);
	chip.setCount(chipCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	bagle.setMenu("베이글");
	bagle.setPrice(baglePrice);
	bagle.setCount(bagleCount);
	
	salad.setMenu("샐러드");
	salad.setPrice(saladPrice);
	salad.setCount(saladCount);
	
	coffee.setMenu("커피");
	coffee.setPrice(coffeePrice);
	coffee.setCount(coffeeCount);
	
	List<BurgerKingBean> list = new ArrayList<>();
	list.add(hamburger);
	list.add(chip);
	list.add(coke);
	list.add(salad);
	list.add(coffee);
	list.add(bagle);
%>
	<div style="width: 500px; margin: 0 auto;">
	<%=place %> <br />
	
	------------------------------------------------------------- <br />
<% 	
	int pay = 0;
	for(BurgerKingBean b : list){
		if(!b.getCount().equals("")){
%>  
		주문한 품목<%=b%> <br />
<%
	pay += Integer.parseInt(b.getCount())*Integer.parseInt(b.getPrice());
	 }
		}
%>		
	-------------------------------------------------------------- <br />
	
	결제 금액 ￦<%=pay %>
	</div>
</article>
</section>
<aside></aside>	
<%@ include file="../common/footer.jsp"%>
 </body>
</html>
