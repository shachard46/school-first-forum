<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.shachar.first.*"%>
<%
		UserDatabase userDatabase = new UserDatabase();
		User user = new User(				
				request.getParameter("username"), 
				request.getParameter("password"),
				request.getParameter("email"),
				request.getParameter("compType"),
				request.getParameter("teamNumber"),
				request.getParameter("country"),
				request.getParameter("teamJob"),
				request.getParameter("rookieTime"),
				0);
		userDatabase.create(user);
		request.getSession().setAttribute("currentUserEmail", user.getEmail());
		request.getSession().setAttribute("validUser", "right");
		request.getSession().setAttribute("poll_results", "false");
		response.sendRedirect("forumBase.jsp");
		
%>