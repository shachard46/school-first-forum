<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>

<%@ page import="static com.shachar.first.Utils.*"%>

<% 
	JSPUtils.resetVisitoryCounter(application);
	JSPUtils.redirectToOrigin(request, response);
%>
