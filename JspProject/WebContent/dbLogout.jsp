<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%
	UserDatabase userDatabase = new UserDatabase();
	User user = userDatabase.getUserByEmail((String)request.getSession().getAttribute("currentUserEmail"));
	user.setLastSeen();
	request.getSession().removeAttribute("currentUserEmail");
	request.getSession().setAttribute("validUser", "disconnected");
	response.sendRedirect("forumBase.jsp");
%>
