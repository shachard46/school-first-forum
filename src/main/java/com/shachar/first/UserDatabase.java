package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;
//import static com.shachar.first.Utils.formatDatabaseDate;

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
						+ "(username, password, email, compType, teamNumber, country, teamJob, rookieTime, is_admin)"
						+ " values('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', %d)",
				entity.getUsername(), entity.getPassword(), entity.getEmail(), entity.getCompType(),
				entity.getTeamNumber(), entity.getCountry(), entity.getTeamJob(), entity.getRookieTime(),
				(entity.getIsAdmin() ? 1 : 0));
	}

	@Override
	public String updateEntityRowSQL(User entity) {
		return String.format(
				"update %s set username='%s', password='%s', email='%s', compType='%s', teamNumber='%s', country='%s', teamJob='%s', rookieTime='%s', is_admin=%d where username='%s';",
				getEntityTableName(), entity.getUsername(), entity.getPassword(), entity.getEmail(),
				entity.getCompType(), entity.getTeamNumber(), entity.getCountry(), entity.getTeamJob(),
				entity.getRookieTime(), entity.getIsAdmin() ? 1 : 0, entity.getUsername());
	}

	@Override
	protected User entityFromResultSet(ResultSet rs) throws SQLException {
		User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("email"),
				rs.getString("compType"), rs.getString("teamNumber"), rs.getString("country"), rs.getString("teamJob"),
				rs.getString("rookieTime"), rs.getInt("is_admin") != 0);
		user.setId(rs.getInt("id"));
		user.setLastSeen(rs.getTimestamp("last_seen"));
		return user;
	}

	public User getUserByUsername(String username) {
		return getSingleEntityByQuery(String.format("select * from members where username = '%s'", username));
	}

	public User getUserByEmail(String email) {
		return getSingleEntityByQuery(String.format("select * from members where email = '%s'", email));
	}
}
