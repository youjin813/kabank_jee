<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<head>
	<link rel="stylesheet" href="../css/index.css" />
	<link rel="stylesheet" href="../css/member.css" />
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/nav.jsp"%>
 <header>
 <h1>회원 가입</h1>
 </header>
 <section>
 <article>
 <form name="join_form" action="join.jsp">
	<table>
		<tr>	
			<td>아이디</td>
			<td >
				<input name="id" id="join_id" type="text"/>
				<button id="check_dupl_btn" name="check_dupl_btn">중복 확인</button>
			</td>
		</tr>
		<tr>
			<td >비밀번호</td>
			<td>
				<input name="pass" type="text" />
			</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td>
				<input type="text"/>
					<button style="width: 160px; height: 30px">확인</button>
			</td>
		</tr>
		<tr>
			<td>이름</td>			
			<td>
				<input name="name" type="text" />
			</td>
		</tr>
		<tr>
		<td>가입일</td>
		<td><input type="date"/></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td>
				<input name="ssn" type="text" />
			</td>
		</tr>
		<tr>
			<td>핸드폰번호</td>
			<td>
				<input name="phone" type="tel"  />
				<input type="radio"value="KT" />KT
				<input type="radio"value="SKT"/>SKT
				<input type="radio"value="LG"/>LG
				<br />
				<select>
				<option>010</option>
				</select>
				<input pattern="[0-9]{4}" type="text" />
				<input pattern="[0-9]{4}" type="text" />
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
				<input type="email" />@<select name="" id=""></select>
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<input name="addr" type="text" />
					<button style="width: 160px; height: 30px">주소 검색</button>
			</td>
		</tr>
		<tr>
			<td>프로필사진</td>
			<td>
				<input name="profile" type="text"/>
				
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<button id="join_confirm_btn" style="width: 160px; height: 30px">확인</button>
			<button style="width: 160px; height: 30px">취소</button>
			</td>
		</tr>
	</table>
</form>
</article>	
</section>
<%@ include file="../common/footer.jsp"%>
<script src="../../js/join_form.js"></script>
</body>
</html>