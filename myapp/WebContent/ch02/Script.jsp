<!-- Script.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%! // ���� ����
	String declaration = "����";
	
	public String decMethod()
	{
		return declaration;
	}
%>

<%	// ��ũ��Ʈ��
	String Scriptlet 		= "��ũ��Ʈ��";
	String Comment 	= "�ּ�";
	
	// ���� ��ü
	out.println("���尴ü�� �̿��� ��� : " + declaration + "<p/>");
%>

������ ���
1. <%=declaration%><p/>
2. <%=decMethod() %>

��ũ��Ʈ���� ���
	<%=Scriptlet%><p/>
<!-- �����ݷ�( ; )�� �ʿ����. -->