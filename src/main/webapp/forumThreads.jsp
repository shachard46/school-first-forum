<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="static com.shachar.first.Utils.*"%>
<%@ page import="java.util.List"%>

<%
	if(JSPUtils.logoutUser(request, response)){
		return;
	}
	Topic topic;
	List<Post> posts;
	if (!request.getQueryString().contains("search") || request.getParameter("search").isEmpty()) {
		session.setAttribute("forumThread", request.getParameter("topic_id"));
		topic = DatabaseManager.get().getTopicDatabase().getEntityById(Integer.parseInt(request.getParameter("topic_id")));
		posts = DatabaseManager.get().getPostDatabase().getPostsByTopic(topic.getName());
	} else {
		Integer id = Integer.parseInt((String)session.getAttribute("forumThread"));
		topic = DatabaseManager.get().getTopicDatabase().getEntityById(id);
		posts = DatabaseManager.get().getPostDatabase().getEntityByTwoFields((String) request.getParameter("field"),
				(String) request.getParameter("search"), "post_topic_name", topic.getName());
	}
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="forum">
	<%@include file="header.jsp"%>

	<div class="big_container">
		<form action="forumThreads.jsp" method="get">

			<table class="container">
				<tr class="search">
					<td colspan="2"><input type="text" placeholder="חפש.."
						name="search" /></td>
					<td rowspan="2" colspan="1">
						<button type="submit">
							<img src="img/search.PNG" />
						</button>
					</td>
				</tr>
				<tr>
					<td colspan="2"><select name="field"><option
								value="post_name">שם הפוסט</option>
							<option value="email">אימייל יוצר הפוסט</option>
					</select></td>
				</tr>
				<tr>
					<td class="sub_topic header">שם הפוסט</td>
					<td class="last_post header">יוצר הפוסט</td>
					<td class="post_amount header">זמן פרסום</td>
				</tr>
				<tr>
					<td colspan="3" class="header"><%=topic.getName()%></td>
				</tr>

				<%
					if (posts != null) {
						for (Post post : posts) {
							User user = DatabaseManager.get().getUserDatabase().getUserByEmail(post.getEmail());
				%>
				<tr>
					<td class="sub_topic"><a
						href="forumPost.jsp?id=<%=post.getId()%>"><%=post.getPostName()%></a></td>
					<td class="last_post">
					<%if(user != null){%>
						<a href="oneUser.jsp?email=<%=user.getEmail()%>"><%=user.getUsername()%></a>
					<%} else {%>
						 המשתמש לא קיים או נערך
					<%}%>		
					</td>
					<td class="post_amount">לפני <%=getPeriod(post.getPostDate())%></td>
				</tr>
				<%
					}
					}
				%>

			</table>
		</form>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
