<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbMembers.jsp"%>
<!DOCTYPE html>
<%
	if (request.getParameter("will_admin") != null) {
		DatabaseManager.get().getUserDatabase().updateField("is_admin", "email", (String) request.getParameter("email"),
				Integer.parseInt(request.getParameter("will_admin")));
	} else {
		DatabaseManager.get().getUserDatabase().DeleteRow("email", (String) request.getParameter("email"));
	}
	response.sendRedirect("users.jsp");
%>