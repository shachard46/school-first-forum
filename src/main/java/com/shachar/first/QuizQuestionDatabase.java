package com.shachar.first;

import java.sql.ResultSet;
import java.sql.SQLException;

public class QuizQuestionDatabase extends AbstractEntityDatabase<QuizQuestion> {

    @Override
    protected String getEntityTableName() {
        return "quiz_questions";
    }

    @Override
    protected QuizQuestion getDBEntity(QuizQuestion entity) {
        return entity;
    }

    @Override
    protected String insertEntitySQL(QuizQuestion entity) {
        return String.format(
                "insert into quiz_questions " + "(name, ans_1, ans_2, ans_3, ans_4)"
                        + " values('%s', '%s', '%s', '%s')",
                entity.getName(), entity.getAns1(), entity.getAns2(), entity.getAns3(), entity.getAns4());
    }

    @Override
    protected QuizQuestion entityFromResultSet(ResultSet rs) throws SQLException {
        QuizQuestion QuizQuestion = new QuizQuestion(rs.getString("name"), rs.getString("ans_1"), rs.getString("ans_2"),
                rs.getString("ans_3"), rs.getString("ans_4"));
        QuizQuestion.setId(rs.getInt("id"));
        return QuizQuestion;

    }

    public QuizQuestion getQuizQuestionByName(String name) {
        return getSingleEntityByQuery(String.format("select * from quiz_questions where name='%s'", name));
    }
}
