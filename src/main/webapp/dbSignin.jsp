<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="static com.shachar.first.Utils.*"%>

<%
	request.getSession().setMaxInactiveInterval(36000000);
	if (DatabaseManager.get().getUserDatabase().getUserByUsername((String) request.getParameter("username")) != null) {
		User user = DatabaseManager.get().getUserDatabase().getUserByUsername((String) request.getParameter("username"));
		if (user.getPassword().equals(request.getParameter("password"))) {
			request.getSession().removeAttribute("currentUserEmail");
			request.getSession().setAttribute("currentUserEmail", user.getEmail());
			request.getSession().setAttribute("validUser", "right");
			request.getSession().setAttribute("poll_results", "false");
			DatabaseManager.get().getUserDatabase().updateField("last_seen", "email", (String) request.getSession().getAttribute("currentUserEmail"), "1970-1-1 00:00:00");
			response.sendRedirect("forumBase.jsp");
		} else {
			request.getSession().setAttribute("validUser", "wrong");
			response.sendRedirect("signIn.jsp");
		}
	} else {
		request.getSession().setAttribute("validUser", "wrong");
		response.sendRedirect("signIn.jsp");
	}
	
%>