<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="dbMembers.jsp"%>

<%
	List<PollQuestion> pollQuestions = pollQuestionDatabase.getAllEntities();
	for(PollQuestion pollQuestion : pollQuestions){
		String name = pollQuestion.getName();
		int id = pollQuestion.getId();

		String ans = request.getParameter(String.valueOf(id));
		PollAnswer pollAnswer = new PollAnswer(name, ans);
 		pollAnswerDatabase.create(pollAnswer); 
	}
	request.getSession().setAttribute("poll_results", "true");
	response.sendRedirect("poll.jsp");
%>