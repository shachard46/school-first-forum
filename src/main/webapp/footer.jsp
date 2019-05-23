<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<div class="footer">

		מונה מבקרים: <%=JSPUtils.incrementVisitorCounter(application)%>
	<%
		
		if(JSPUtils.isCurrentUserAdmin(session)) {
	%>
	
		<a href="dbResetVisitorCounter.jsp" style="float: left;">איפוס מונה מבקרים</a>
	<%
		}
	%>
</div>
