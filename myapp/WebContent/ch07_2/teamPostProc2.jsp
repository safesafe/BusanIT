<!-- simpleBean4.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mgr" class="ch07.TeamMgr"/>
<jsp:useBean id="bean" class="ch07.TeamBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean result = mgr.insertTeam(bean);
	String str = "���Խ���";
	String location = "teamInsert.html";
	if(result) {
		str = "���Լ���";
		location = "teamList.jsp";
	}
%>
<script>
	alter("<%=str%>");
	<%--location.href("<%=location%>");--%>
	location.href = "<%=location%>";
</script>