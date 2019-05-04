<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="static com.shachar.first.Utils.*"%>

<%
	UserDatabase userDatabase = new UserDatabase();
	request.getSession().setMaxInactiveInterval(36000000);
	if (userDatabase.getUserByUsername((String) request.getParameter("username")) != null) {
		User user = userDatabase.getUserByUsername((String) request.getParameter("username"));
		out.println((String) request.getParameter("username"));
		out.println((String) request.getParameter("password"));
		out.print(user.getPassword());
		if (user.getPassword().equals((String) request.getParameter("password"))) {
			request.getSession().removeAttribute("currentUserEmail");
			request.getSession().setAttribute("currentUserEmail", user.getEmail());
			request.getSession().setAttribute("validUser", "right");
			request.getSession().setAttribute("poll_results", "false");
			response.sendRedirect("forumBase.jsp");
			userDatabase.updateField("last_seen", "email", (String) request.getSession().getAttribute("currentUserEmail"), "1970-1-1 00:00:00");
		} else {
			request.getSession().setAttribute("validUser", "wrong");
			response.sendRedirect("signIn.jsp");
		}
	} else {
		request.getSession().setAttribute("validUser", "wrong");
		response.sendRedirect("signIn.jsp");
	}
	
%>