<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%
	UserDatabase userDatabase = new UserDatabase();
	User user = userDatabase.getUserByEmail((String)request.getSession().getAttribute("currentUserEmail"));
	user.setLastSeen();
	userDatabase.updateField("last_seen", "email", user.getEmail(), user.getLastSeen());
	request.getSession().removeAttribute("currentUserEmail");
	request.getSession().setAttribute("validUser", "disconnected");
	response.sendRedirect("forumBase.jsp");
%>
