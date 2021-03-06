	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="static com.shachar.first.Utils.*"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

<%
	if(JSPUtils.logoutUser(request, response) || JSPUtils.requiresLogin(request, response)){
		return;
	}
	if(request.getMethod().equals("POST")){
		JSPUtils.addPollAnswer(request);
		response.sendRedirect("poll.jsp");
	}
	List<PollQuestion> pollQuestions = DatabaseManager.get().getPollQuestionDatabase().getAllEntities();
%>
<!DOCTYPE html>
<html dir="rtl">
<head>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript" src="functions.js"></script>
	<meta charset="UTF-8">
    <title>FirstForum</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<form action="poll.jsp" method="POST" accept-charset="UTF-8" name="poll" onsubmit="return checkAllPoll()">
		<table class="container poll_container">
			<%
				for (PollQuestion pollQuestion : pollQuestions) {
					String name = pollQuestion.getName();
					String id = pollQuestion.getId() + "";
			%>
			<tr>
				<%
					if (request.getSession().getAttribute("poll_results").equals("false")) {
				%>
				<td><label><%=name%></label>
				 <%
 					for (String answer : pollQuestion.getAllAnswers()) {
				%>
					  <span class="answer"><input type="radio"
						name="<%=id%>" value="<%=answer%>"><span
						class="answer_text"> <%=answer%></span></span> <%
					}
				 %></td>
				<%
					} else {
							Map<String, Integer> answersCount = DatabaseManager.get().getPollAnswerDatabase().getAnswerCounts(name);
							int ansSum = sum(answersCount.values());
				%>
				<td><label><%=name%></label> <%
 	for (String answer : pollQuestion.getAllAnswers()) {
 				Integer ansCount = answersCount.get(answer);
 				double ratio = 0;
 				if (ansCount != null) {
 					ratio = (double) ansCount / ansSum;
 				}
 %>
					<div class="answer"><%=answer%>
						<hr class="answer_mess" width=<%=270 * ratio%>><%=formatNumber(ratio * 100)%>%
					</div> <%
 	}
 		}
 %>
			</tr>
			<%
				}
				if (request.getSession().getAttribute("poll_results").equals("false")) {
			%>

			<tr>
				<td><input type="submit" value="שלח" class="post_button">
				</td>
			</tr>
			<%
				}
			%>
		</table>

	</form>
	<%@include file="footer.jsp"%>

</body>
</html>