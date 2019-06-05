package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class TopicDatabase extends AbstractEntityDatabase<Topic> {
	@Override
	protected String getEntityTableName() {
		return "topics";
	}

	@Override
	protected String insertEntitySQL(Topic entity) {
		return String.format("insert into topics " + "(name, parent_id)" + " values('%d', '%s')", entity.getName(),
				entity.getParent_id());
	}

	@Override
	protected Topic entityFromResultSet(ResultSet rs) throws SQLException {
		Topic topic = new Topic(rs.getInt("id"), rs.getString("name"), rs.getInt("parent_id"));
		topic.setId(rs.getInt("id"));
		return topic;

	}

	@Override
	protected Topic getDBEntity(Topic entity) {
		return entity;
	}

	public List<Topic> getAllParentTopics() {
		return getEntitiesByQuery("Select * from topics where parent_id is null");
	}
	public List<Topic> getAllSubTopics() {
		return getEntitiesByQuery("Select * from topics where parent_id is not null");
	}
	public List<Topic> getSubTopics(int id) {
		return getEntitiesByQuery("Select * from topics where parent_id=" + id);
	}

	public Topic getTopicByName(String name) {
		return getSingleEntityByQuery(String.format("Select * from topics where name='%s'", name));
	}

	@Override
	protected String updateEntityRowSQL(User entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
