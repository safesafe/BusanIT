<!-- expression2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%!
	public static int max1(int a, int b) {
   		return (a >= b) ? a : b;
}
%>
<%
	java.util.Date d = new java.util.Date();
	int hour = d.getHours();
	int one = 10;
	int two = 12;
%>
������ �����ϱ�� �����ϱ��? <%=(hour < 12) ? "����" : "����" %>
one�� two �� �߿� ū ���ڴ�? <%=max1(one, two) %>