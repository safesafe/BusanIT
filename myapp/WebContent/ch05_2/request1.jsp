<!-- request1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
	String name 				= request.getParameter("name");
	String studentNum 	= request.getParameter("studentNum");
	String gender 			= request.getParameter("gender");
	String major 				= request.getParameter("major");
	String hobby[] 			= request.getParameterValues("hobby");
	
	if(gender.equals("man")) {
		gender = "����";
	}
	else {
		gender = "����";
	}
%>


���� : <%=name%>
�й� : <%=studentNum%>
���� : <%=gender%>
�а� : <%=major%>
��� : <%
		 for(int i = 0; i < hobby.length; i++) {
			 out.println(hobby[i] + "&nbsp;");
			 }
			 %>