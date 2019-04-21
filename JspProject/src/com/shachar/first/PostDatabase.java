package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class PostDatabase extends AbstractEntityDatabase<Post> {
	@Override
	protected String getEntityTableName() {
		return "posts";
	}

	@Override
	protected String insertEntitySQL(Post entity) {
		return String.format(
				"insert into posts " + "(post_name, email, post_text, post_topic_name, post_date)"
						+ " values('%s', '%s', '%s', '%s', '%s')",
				entity.getPostName(), entity.getEmail(), entity.getPostText(), entity.getPostTopicName(), entity.getPostDate());
	}

	@Override
	protected Post entityFromResultSet(ResultSet rs) throws SQLException {
		Post post = new Post(rs.getString("post_name"), rs.getString("email"), rs.getString("post_text"),
				rs.getString("post_topic_name"));
		post.setId(rs.getInt("id"));
		return post;
	}

	@Override
	protected Post getDBEntity(Post entity) {
		return entity;
	}
	public List<Post> getPostsByTopic(String topic_name) {
		return getEntitiesByQuery(String.format("select * from posts where post_topic_name='%s'", topic_name));
	}
	public List<Post> getUserPostsByEmail(String email){
		return getEntitiesByQuery(String.format("select * from posts where email = '%s'", email));
	}
}
