<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/head.jsp"%>
<link rel="stylesheet" href="../../css/admin_main.css" />
<body>
<h1>관리자 메인 페이지</h1>
<div id="admin_wrapper">
<aside id="admin_aside">
	<a id="member_mgmt_link">회원관리</a>
</aside>
<section id="admin_section">
<h1>회원관리</h1>
	<article>
	<table id="admin_table">
		<tr>
			<td>
			<button id="create_table_btn">테이블 생성</button>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	</article>
</section>
<script src="../../js/admin/main.js"></script>
</div>
 <%@ include file="../common/footer.jsp"%>
</body>
</html>