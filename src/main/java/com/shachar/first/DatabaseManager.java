package com.shachar.first;

public class DatabaseManager {
	private static final DatabaseManager instance = new DatabaseManager();

	private final UserDatabase userDatabase;
	private final PostDatabase postDatabase;
	private final PollQuestionDatabase pollQuestionDatabase;
	private final PollAnswerDatabase pollAnswerDatabase;
	private final TopicDatabase topicDatabase;
	private final QuizQuestionDatabase quizQuestionDatabase;

	private DatabaseManager() {
		this.userDatabase = new UserDatabase();
		this.postDatabase = new PostDatabase();
		this.pollQuestionDatabase = new PollQuestionDatabase();
		this.pollAnswerDatabase = new PollAnswerDatabase();
		this.topicDatabase = new TopicDatabase();
		this.quizQuestionDatabase = new QuizQuestionDatabase();
	}

	public static DatabaseManager get() {
		return instance;
	}

	public UserDatabase getUserDatabase() {
		return userDatabase;
	}

	public PostDatabase getPostDatabase() {
		return postDatabase;
	}

	public PollQuestionDatabase getPollQuestionDatabase() {
		return pollQuestionDatabase;
	}

	public PollAnswerDatabase getPollAnswerDatabase() {
		return pollAnswerDatabase;
	}

	public TopicDatabase getTopicDatabase() {
		return topicDatabase;
	}

	public QuizQuestionDatabase getQuizQuestionDatabase() {
		return quizQuestionDatabase;
	}



}
