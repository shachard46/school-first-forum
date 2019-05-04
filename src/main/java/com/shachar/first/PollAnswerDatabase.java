package com.shachar.first;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class PollAnswerDatabase extends AbstractEntityDatabase<PollAnswer>{

	@Override
	protected String getEntityTableName() {
		return "poll_answers";
	}

	@Override
	protected PollAnswer getDBEntity(PollAnswer entity) {
		return entity;
	}

	@Override
	protected String insertEntitySQL(PollAnswer entity) {
		return String.format("insert into poll_answers " + "(question, answer)"
				+ " values('%s', '%s')",
		entity.getQuestion(), entity.getAnswer());
	}

	@Override
	protected PollAnswer entityFromResultSet(ResultSet rs) throws SQLException {
		return new PollAnswer(rs.getString("question"), rs.getString("answer"));
	}
	public Map<String,Integer> getAnswerCounts(String question) {
		String sql = String.format("select answer, count(*) as c from poll_answers  where question = '%s' group by answer", question);
		Connection connection = getConnection();
		Statement st = null;
		ResultSet rs = null;
		Map<String,Integer> entities = new HashMap<String,Integer>();
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = st.executeQuery(sql);
			while(rs.next()) {
				entities.put(rs.getString("answer"), rs.getInt("c"));
			}
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		}finally {
			if(rs != null) {
				try{
					rs.close();
				}catch(SQLException e) {}
			}
			if(st != null) {
				try{
					st.close();
				}catch(SQLException e) {}
			}
		}
		return entities;
	}

}
