<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Index</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
	<link rel="shortcut icon"  href="../img/favicon.ico" />
	<script src="../js/index.js"></script>
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
	  					<td >
							<input id="index_input_id" type="text" placeholder="ID"/>						  					
	  					</td>
	  					<td rowspan="2">
	  						<button id="index_login_btn">로그인</button>
	  						
	  					</td>
	  				</tr>
	  				<tr>
	  					<td>
	  						<input id="index_input_pass" type="text" placeholder="PASSWORD" />
	  					</td>
	  				</tr>
	  			 </table>	
			</form>
			<a id="go_admin_link" >관리자</a>
			<a id="go_join_link">회원가입</a>
</table>
</article>
</section>
</div>
<%@ include file="common/footer.jsp"%>
<script src="../../js/index.js"></script>
</body>
</html>