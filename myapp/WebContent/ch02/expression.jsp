<!-- expression.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%! // ���������� ��Ģ : �迭 �ؿ��� �׻� for���� �����Ѵ�.
	String study[] = {"Java", "JSP", "Servlet", "Android"};
%>
<table border ="1" width ="200">
  <tr>
    <th>��ȣ</th>
    <th>����</th>
  </tr>
  <%
  	for(int i = 0; i < study.length; i++)
  	{
  %>
  <tr>
  	<td><%=i+1 %></td>
  	<td><%=study[i] %></td>
  </tr>
  <%
  	}
  %>
</table>
<table border ="1" width ="200">
  <tr>
    <th>��ȣ</th>
    <th>����</th>
  </tr>
  <%
  	for(int i = 0; i < study.length; i++)
  	{
		out.print("<tr>");
		out.print("<td>" + (i + 1) + "</td>");
		out.print("<td>" + study[i] + "</td>");
		out.print("</tr>");
  	}
  %>
</table>
  
