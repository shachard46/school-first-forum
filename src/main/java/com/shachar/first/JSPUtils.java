package com.shachar.first;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class JSPUtils {
	public static User getCurrentUser(HttpSession session) {
		return DatabaseManager.get().getUserDatabase()
				.getUserByEmail((String) session.getAttribute("currentUserEmail"));
	}
	
	public static boolean isCurrentUserAdmin(HttpSession session) {
		User user = getCurrentUser(session);
		return user != null && user.getIsAdmin();
	}
	
	public static int getVisitorCounter(ServletContext application) {
		Integer counter = (Integer)application.getAttribute("visitor_counter");
		return counter != null ? counter : 0;
	}
	
	public static int incrementVisitorCounter(ServletContext application) {
		Integer counter = (Integer)application.getAttribute("visitor_counter");
		application.setAttribute("visitor_counter", counter != null ? counter + 1 : 1);
		return getVisitorCounter(application);
	}
	
	public static void resetVisitoryCounter(ServletContext application) {
		application.removeAttribute("visitor_counter");
	}
	
	public static void redirectToOrigin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String referer = request.getHeader("Referer");
		if(referer != null) {
			response.sendRedirect(referer);
		} else {
			response.sendRedirect("forumBase.jsp");
		}
	}
}
