<!-- declarationTest.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%!
	public String getStr()
	{
		str += "�׽�Ʈ�Դϴ�.";
		return str;
	}
	private String str = "����";
%>
<h1><%=getStr() %></h1>