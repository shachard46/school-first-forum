<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%
	UserDatabase userDatabase = new UserDatabase();

	if (userDatabase.getUserByUsername((String) request.getParameter("username")) != null) {
		User user = userDatabase.getUserByUsername((String) request.getParameter("username"));
		out.println((String) request.getParameter("username"));
		out.println((String) request.getParameter("password"));
		out.print(user.getPassword());
		if (user.getPassword().equals((String) request.getParameter("password"))) {
			request.getSession().removeAttribute("currentUserEmail");
			request.getSession().setAttribute("currentUserEmail", user.getEmail());
			request.getSession().setAttribute("validUser", "right");
			response.sendRedirect("forumBase.jsp");
		} else {
			request.getSession().setAttribute("validUser", "wrong");
			response.sendRedirect("signIn.jsp");
		}
	} else {
		request.getSession().setAttribute("validUser", "wrong");
		response.sendRedirect("signIn.jsp");
	}
%>