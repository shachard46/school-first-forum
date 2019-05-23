<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.shachar.first.*"%>
		<%@ page import="static com.shachar.first.Utils.*"%>
	
<%
		User user = new User(				
				request.getParameter("username"), 
				request.getParameter("password"),
				request.getParameter("email"),
				request.getParameter("compType"),
				request.getParameter("teamNumber"),
				request.getParameter("country"),
				request.getParameter("teamJob"),
				request.getParameter("rookieTime"),
				false);
		DatabaseManager.get().getUserDatabase().DeleteRow("username", request.getParameter("old"));
		DatabaseManager.get().getUserDatabase().create(user);
		DatabaseManager.get().getUserDatabase().updateField("last_seen", "email", user.getEmail(), formatDatabaseDate(user.getLastSeen()));
		response.sendRedirect("users.jsp");
		
%>