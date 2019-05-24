<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}

	User curUser = JSPUtils.getCurrentUser(session);
%>