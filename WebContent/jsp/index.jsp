<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./common/header.jsp"%>
<body>

<table id="wrapper">
	<tr style="height: 10%; text-align: center;">
		<td colspan="5">HOME</td>

	</tr>
	<tr style="height: 60%" >
		<td colspan="5">
	  			<form action="./burgerking/main.jsp">
	  				<table id="login-box">
	  				<tr>
	  					<td style="width:200px">
							<input type="text" placeholder="ID"/>						  					
	  					</td>
	  					<td style="width:100px" rowspan="2">
	  						<input type="submit" value="로그인" style="width:100px;height: 100px " />
	  					</td>
	  				</tr>
	  				<tr>
	  					<td>
	  						<input type="text" placeholder="PASSWORD" />
	  					</td>
	  				</tr>
	  			 </table>
	  			</form>
<%@ include file="./common/footer.jsp"%>
