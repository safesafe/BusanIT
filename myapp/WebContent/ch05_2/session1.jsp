<!-- session1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	
	// DB����
	boolean result = true;
	if(result) { // �α��� �������� ���
		session.setAttribute("idKey", id);	// ���ǰ�ü�� �α��� ���� ����
		session.setMaxInactiveInterval(60 * 3);		// ����ð� 3������ ���� - 3�� ������ ������ ����
	}
	else { // �α��� �������� ���
%>
	<script>
		alert("�α��� �����Դϴ�.");
		location.href = "session1.html";
	</script>
<%		
	}
%>
<h1>Session Example1</h1>
<FORM METHOD=POST ACTION="session2.jsp">
    1.���� �����ϴ� ������?<br>
	<INPUT TYPE="radio" NAME="season" VALUE="��">��
	<INPUT TYPE="radio" NAME="season" VALUE="����">����
	<INPUT TYPE="radio" NAME="season" VALUE="����">����
	<INPUT TYPE="radio" NAME="season" VALUE="�ܿ�">�ܿ�<p>

	2.���� �����ϴ� ������?<br>
	<INPUT TYPE="radio" NAME="fruit" VALUE="watermelon">����
	<INPUT TYPE="radio" NAME="fruit" VALUE="melon">���
	<INPUT TYPE="radio" NAME="fruit" VALUE="apple">���
	<INPUT TYPE="radio" NAME="fruit" VALUE="orange">������<p>
	<INPUT TYPE="submit" VALUE="�������">
</FORM>