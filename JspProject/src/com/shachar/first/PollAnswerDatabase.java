package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;

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
	public int pollAnswerCount(String answer) {
		return getEntitiesByQuery(String.format("select * from poll_answers where answer='%s'", answer)).size();
	}
	

}
