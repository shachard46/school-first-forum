package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDatabase extends AbstractEntityDatabase<User> {
	@Override
	protected String getEntityTableName() {
		return "members";
	}
	@Override
	protected User getDBEntity(User entity) {
		return getUserByEmail(entity.getEmail());
	}

	@Override
	protected String insertEntitySQL(User entity) {
		return String.format(
				"insert into members "
						+ "(username, password, email, compType, teamNumber, country, teamJob, rookieTime)"
						+ " values('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')",
				entity.getUsername(), entity.getPassword(), entity.getEmail(), entity.getCompType(),
				entity.getTeamNumber(), entity.getCountry(), entity.getTeamJob(), entity.getRookieTime());
	}

	@Override
	protected User entityFromResultSet(ResultSet rs) throws SQLException {
		User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("email"),
				rs.getString("compType"), rs.getString("teamNumber"), rs.getString("country"), rs.getString("teamJob"),
				rs.getString("rookieTime"));
		user.setId(rs.getInt("id"));
		return user;
	}
	public User getUserByUsername(String username) {
		return getSingleEntityByQuery(String.format("select * from members where username = '%s'", username));
	}

	public User getUserByEmail(String email) {
		return getSingleEntityByQuery(String.format("select * from members where email = '%s'", email));
	}


}
