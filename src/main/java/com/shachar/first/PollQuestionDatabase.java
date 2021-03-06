package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PollQuestionDatabase extends AbstractEntityDatabase<PollQuestion> {

	@Override
	protected String getEntityTableName() {
		return "poll_questions";
	}

	@Override
	protected PollQuestion getDBEntity(PollQuestion entity) {
		return entity;
	}

	@Override
	protected String insertEntitySQL(PollQuestion entity) {
		return String.format(
				"insert into poll_questions " + "(name, ans_1, ans_2, ans_3, ans_4)"
						+ " values('%s', '%s', '%s', '%s')",
				entity.getName(), entity.getAns1(), entity.getAns2(), entity.getAns3(), entity.getAns4());
	}

	@Override
	protected PollQuestion entityFromResultSet(ResultSet rs) throws SQLException {
		PollQuestion pollQuestion= new PollQuestion(rs.getString("name"), rs.getString("ans_1"), rs.getString("ans_2"), rs.getString("ans_3"),
				rs.getString("ans_4"));
		pollQuestion.setId(rs.getInt("id"));
		return pollQuestion;

	}
	public PollQuestion getPollQuestionByName(String name) {
		return getSingleEntityByQuery(String.format("select * from poll_questions where name='%s'", name));
	}

	@Override
	protected String updateEntityRowSQL(User entity) {
		// TODO Auto-generated method stub
		return null;
	}
}
