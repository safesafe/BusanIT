<!-- simpleBean4.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<!-- 1. Beans ��ü�� �����Ѵ�. -->
<jsp:useBean id="bean" class="ch07.SimpleBean2"/>

<!-- 2. ���� �޾Ƽ� Beans�� �����Ѵ�. -->
<jsp:setProperty property="*" name="bean"/>

<!-- 3. Beans�� ����Ѵ�. -->
name2 : <jsp:getProperty property="name" name="bean"/><br/>
age2 : <jsp:getProperty property="age" name="bean"/><br/>
city2 : <jsp:getProperty property="city" name="bean"/><br/>