<!-- for.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
1���� 10������ ���� (�� ����)?<p/>
1. ǥ�������� ���<br/>
<!-- for : ũ�Ⱑ ������ ��, while : ���ѹݺ� -->
<%
	int sum = 0;
	for(int i=1; i<=10; i++)
	{
		if(i < 10)
		{
%>
		<%= i + " + " %>
<%
		}
		else
		{
%>
		<%= i + " = " %>
		<%
		}
		sum += i;
		}%>
<%=sum%><p/>

2. out.println�� �̿��Ͽ� ���<br/>
<%
		sum = 0;
		for(int i=1; i<=10; i++)
		{
			if(i < 10)
			{
				out.print(i + " + ");
			}
			else
			{
				out.print(i + " = ");
			}
			sum += i;
		}
		out.print(sum);
%>