<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
	PostDatabase postDatabase = new PostDatabase();
	TopicDatabase topicDatabase = new TopicDatabase();
	UserDatabase userDatabase = new UserDatabase();
	boolean curAdmin = false;
	User curUser = null;
	PollQuestionDatabase pollQuestionDatabase = new PollQuestionDatabase();
	PollAnswerDatabase pollAnswerDatabase = new PollAnswerDatabase();
	QuizQuestionDatabase quizQuestionDatabase = new QuizQuestionDatabase();
	if (request.getSession().getAttribute("currentUserEmail") != null) {
		curUser = userDatabase
				.getUserByEmail((String) request.getSession().getAttribute("currentUserEmail"));
		curAdmin = curUser.getIsAdmin() == 1 ? true : false;
	}
%>