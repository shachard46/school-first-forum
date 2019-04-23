<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>
<%@include file="dbMembers.jsp"%>

<%
	Topic topic = topicDatabase.getEntityById(Integer.parseInt(request.getParameter("topic_id")));
	List<Post> posts = postDatabase.getPostsByTopic(topic.getName());
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="forum">
	<%@include file="header.jsp"%>
	
	<div class="big_container">
		<table class="container">
			<tr>
				<td colspan="3" class="header"><%=topic.getName()%></td>
			</tr>

			<%
				if (posts != null) {
					for (Post post : posts) {
						User user = userDatabase.getUserByEmail(post.getEmail());
			%>
			<tr>
				<td class="sub_topic"><a
					href="forumPost.jsp?id=<%=post.getId()%>"><%=post.getPostName()%></a></td>
				<td class="last_post"><a href="oneUser.jsp"><%=user.getUsername()%></a></td>
				<td class="post_amount"><%=post.getPostDate()%></td>
			</tr>
			<%
				}
				}
			%>

		</table>
	</div>
</body>
</html>
