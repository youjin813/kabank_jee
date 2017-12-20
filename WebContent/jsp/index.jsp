<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Index</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
</head>
<body>
<div id="wrapper">
<header id="index_header">
	<h1>BIT CAMP SAMPLE PROJECT</h1>
</header>
<section id="index_section">
<article>
<table id="index_table">
	<tr>
		<td colspan="5">
	  			<form action="burgerking/main.jsp">
	  				<table id="index_login_box">
	  				<tr>
	  					<td id="index_input_id">
							<input type="text" placeholder="ID"/>						  					
	  					</td>
	  					<td rowspan="2">
	  						<input type="submit" value="로그인" id="index_input_pass" />
	  						
	  					</td>
	  				</tr>
	  				<tr>
	  					<td>
	  						<input type="text" placeholder="PASSWORD" />
	  					</td>
	  				</tr>
	  			 </table>	
			</form>
			<a href=""></a>
</table>
</article>
	  	</section>
<%@ include file="./common/footer.jsp"%>
</div>
</body>
</html>