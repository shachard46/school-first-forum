<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="dbMembers.jsp" %>
<!DOCTYPE html>
<%
	pollAnswerDatabase.clearTable();
	response.sendRedirect("forumBase.jsp");
%>