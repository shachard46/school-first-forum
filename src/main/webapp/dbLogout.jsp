<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@include file="dbMembers.jsp"%>

<%@ page import="static com.shachar.first.Utils.*"%>

<%
	curUser.setLastSeenNow();
	userDatabase.updateField("last_seen", "email", curUser.getEmail(), formatDatabaseDate(curUser.getLastSeen()));
	request.getSession().removeAttribute("currentUserEmail");
	request.getSession().setAttribute("validUser", "disconnected");
	response.sendRedirect("forumBase.jsp");
%>
