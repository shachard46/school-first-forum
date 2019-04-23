<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>
<%@include file="dbMembers.jsp"%>

<%
	List<Topic> parentTopics = topicDatabase.getAllParentTopics();
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="functions.js"></script>
</head>
<body class="forum">
	<%@include file="header.jsp"%>

	<div class="big_container">
		<table class="container">
			<tr>
				<td class="sub_topic header">תת נושא</td>
				<td class="last_post header">פוסט אחרון</td>
				<td class="post_amount header">מספר פוסטים</td>
			</tr>
			<%
				for (Topic parentTopic : parentTopics) {
			%>
			<tr>
				<td colspan="3" class="header"><%=parentTopic.getName()%></td>
			</tr>
			<%
				List<Topic> subTopics = topicDatabase.getSubTopics(parentTopic.getId());
					for (Topic subTopic : subTopics) {
						int posts = postDatabase.getPostsByTopic(subTopic.getName()).isEmpty() ? 0
								: postDatabase.getPostsByTopic(subTopic.getName()).size();
						String postName = postDatabase.getPostsByTopic(subTopic.getName()).isEmpty() ? "אין פוסטים"
								: postDatabase.getPostsByTopic(subTopic.getName())
										.get(postDatabase.getPostsByTopic(subTopic.getName()).size() - 1).getPostName();
						int id = postDatabase.getPostsByTopic(subTopic.getName()).isEmpty() ? 0
								: postDatabase.getPostsByTopic(subTopic.getName())
										.get(postDatabase.getPostsByTopic(subTopic.getName()).size() - 1).getId();
			%>
			<tr>
				<td class="sub_topic"><a
					href="forumThreads.jsp?topic_id=<%=subTopic.getId()%>"><%=subTopic.getName()%></a></td>
				<%
					if (postName != "אין פוסטים") {
				%>
				<td class="last_post"><a href="forumPost.jsp?id=<%=id%>"><%=postName%></a></td>
				<%
					} else {
				%>
				<td class="last_post"><%=postName%></td>
				<%
					}
				%>
				<td class="post_amount"><%=posts%></td>
			</tr>
			<%
				}
			%>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
