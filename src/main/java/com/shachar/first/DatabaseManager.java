package com.shachar.first;

public class DatabaseManager {
	private static final DatabaseManager instance = new DatabaseManager();

	private final UserDatabase userDatabase;
	
	private DatabaseManager () {
		this.userDatabase = new UserDatabase();
	}

	public static DatabaseManager get() {
		return instance;
	}

	public UserDatabase getUserDatabase() {
		return userDatabase;
	}
}
