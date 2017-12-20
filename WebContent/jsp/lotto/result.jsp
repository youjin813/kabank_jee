<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/head.jsp"%>
<%@ include file="../common/nav.jsp"%>
<%@ page import="com.kabank.jee.domain.LottoBean"%>	
<%@ page import="java.util.*"%>

<%! 
	public int countRow(String money){
		int count = 0;
		count = Integer.parseInt(money);
		return count / 1000;
	}
	public List<LottoBean> createLottos(int count){
		List<LottoBean> list = new ArrayList<>();
		String foo = "";
		LottoBean lottoBean = null;
		for(int i=0;i<count;i++){
			lottoBean = new LottoBean();
			int[] a = createLotto();
			foo = "";
			for(int j=0;j<6;j++){
				 foo += a[i]+""; 
			 }
			lottoBean.setLottoNum(foo);
			list.add(lottoBean);
		}
		return list;
	}
	public int[] createLotto(){
		int[] lotto = new int[6];
		for(int i=0;i<6;i++){
			int num = (int)(Math.random()*45)+1;
		}
		return lotto;
	}
%>
<section>
<article>
<%
	int count = countRow(request.getParameter("money"));
	for(LottoBean lot : createLottos(count)){
		%>
		<%=lot.getLottoNum() %>
		<% 
	}
%>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp"%>
	