<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/navigation.jsp"%>
		<div style="width : 300px; height: 400px; margin: 0 auto;">
		<p>
			<table>
				<tr>
					<td>
					<img src="../../img/hamburger.jpg" style="width: 150px; height: 150px;" alt="" />
					<input type="checkbox" name="menu" value="hamberger"/>햄버거 ￦5,500
					</td>
					<td>
					<img src="../../img/coke.jpg" style="width: 150px; height: 150px;" alt="" />
					<input type="checkbox" name="menu" value="coke"/>콜라 : ￦1,000 
					</td>
					<td>
					<img src="../../img/chip.jpg" style="width: 150px; height: 150px" alt="" />
					<input type="checkbox" name="menu" value="chip"/>감자칩 : ￦1,000
					</td>
				</tr>
				<tr>
					<td>
					<img src="../../img/coffee.jpg" style="width: 150px; height: 150px" alt="" />
					<input type="checkbox" name="menu" value="coffee"/>커피 : ￦900
					</td>
					<td>
					<img src="../../img/bagle.jpg" style="width: 150px; height: 150px" alt="" />
					<input type="checkbox" name="menu" value="bagle"/>베이글 : ￦4.000
					</td>
					<td>
					<img src="../../img/salad.jpg" style="width: 150px; height: 150px" alt="" />
					<input type="checkbox" name="menu" value="salad"/>샐러드 : ￦3.000
					</td>
				</tr>
			</table>
		
		</p>
		<form action="result.jsp">
			<input type="text" name="count" placeholder="수량"/> <br />
			<input type="hidden" name="hamburger" value="5500"/>
			<input type="hidden" name="coke" value="1000"/>
			<input type="hidden" name="chip" value="1000"/>
			<input type="hidden" name="bagle" value="4000"/>
			<input type="hidden" name="salad" value="3000"/>
			<input type="hidden" name="coffee" value="900"/>
			<input type="submit" value="전 송"/>	
					</form>
	  			</div>		
 <%@ include file="../common/footer.jsp"%>