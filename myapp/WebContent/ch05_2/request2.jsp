<!-- request2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<%
	String protocol				= request.getProtocol();
	String serverName 		= request.getServerName();
	int serverPort 				= request.getServerPort();
	String remoteAddr			= request.getRemoteAddr();
	String remoteHost			= request.getRemoteHost();
	String method				= request.getMethod();
	String requestURI			= request.getRequestURI();
	String useBrowser			= request.getHeader("User-Agent");
	String query					= request.getQueryString();
	
	StringBuffer requestURL =  request.getRequestURL();
%>
�������� : <%=protocol%><p/>
���� �̸� : <%=serverName%><p/>
���� ��Ʈ��ȣ : <%=serverPort%><p/>
����� ��ǻ�� �ּ� : <%=remoteAddr%><p/>
����� ��ǻ�� �̸� : <%=remoteHost%><p/>
��� Method : <%=method%><p/>
��û ��� (URI) : <%=requestURI%><p/>
��û ��� (URL) : <%=requestURL%><p/>
���� ����ϴ� ������ : <%=useBrowser%><p/>
Query : <%=query%>