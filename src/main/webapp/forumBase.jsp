
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>
<%@include file="dbMembers.jsp"%>

<%
	if(JSPUtils.logoutUser(request, response)){
		return;
	}
	List<Topic> parentTopics = DatabaseManager.get().getTopicDatabase().getAllParentTopics();
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
		<form action="forumBase.jsp" method="post">
			<table class="container">

				<tr class="search">
					<td colspan="2"><input type="text" placeholder="חפש.."
						name="search" /></td>
					<td colspan="1">
						<button type="submit">
							<img src="img/search.PNG" />
						</button>
					</td>
				</tr>
				<tr>
					<td class="sub_topic header">תת נושא</td>
					<td class="last_post header">פוסט אחרון</td>
					<td class="post_amount header">מספר פוסטים</td>
				</tr>
				<%
					if (Utils.isEmptyOrNull(request.getParameter("search"))) {
						for (Topic parentTopic : parentTopics) {
				%>
				<tr>
					<td colspan="3" class="header"><%=parentTopic.getName()%></td>
				</tr>
				<%
					List<Topic> subTopics = DatabaseManager.get().getTopicDatabase().getSubTopics(parentTopic.getId());
							for (Topic subTopic : subTopics) {
								int posts = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? 0
										: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size();
								String postName = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? "אין פוסטים"
										: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName())
												.get(DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size() - 1).getPostName();
								int id = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? 0
										: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName())
												.get(DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size() - 1).getId();
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
				<%
					} else {
						for (Topic subTopic : DatabaseManager.get().getTopicDatabase().getEntityByField("name",
								(String) request.getParameter("search"))) {
							int posts = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? 0
									: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size();
							String postName = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? "אין פוסטים"
									: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName())
											.get(DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size() - 1).getPostName();
							int id = DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).isEmpty() ? 0
									: DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName())
											.get(DatabaseManager.get().getPostDatabase().getPostsByTopic(subTopic.getName()).size() - 1).getId();
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
		</form>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
