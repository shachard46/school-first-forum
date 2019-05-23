<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%
	PostDatabase postDatabase = new PostDatabase();
	String email = (String) request.getSession().getAttribute("currentUserEmail");
	Post post = new Post(request.getParameter("postName"), email, request.getParameter("postText"),
			request.getParameter("postTopicName"));
	postDatabase.create(post);
	
	response.sendRedirect("forumBase.jsp");
%>