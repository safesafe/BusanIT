<!-- ScriptletTest.jsp -->
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<% // ��ũ��Ʈ�� : _jspService������ ���� ��
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<html>
<head>
<title>Scriptlet Test</title>
</head>
<body>
<h1>����ð��� <%=hour %>�� <%=minute %>�� <%=second%>���Դϴ�.</h1>
</body>
</html>