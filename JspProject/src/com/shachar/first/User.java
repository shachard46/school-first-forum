package com.shachar.first;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class User {
	private int id;
	private String username;
	private String password;
	private String email;
	private String compType;
	private String teamNumber;
	private String country;
	private String teamJob;
	private String rookieTime;
	private String lastSeen;

	Date date = new Date();
	DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

	public User(String username, String password, String email, String compType, String teamNumber, String country,
			String teamJob, String rookieTime) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.compType = compType;
		this.teamNumber = teamNumber;
		this.country = country;
		this.teamJob = teamJob;
		this.rookieTime = rookieTime;
		lastSeen = formatter.format(date);

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompType() {
		return compType;
	}

	public void setCompType(String compType) {
		this.compType = compType;
	}

	public String getTeamNumber() {
		return teamNumber;
	}

	public void setTeamNumber(String teamNumber) {
		this.teamNumber = teamNumber;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getTeamJob() {
		return teamJob;
	}

	public void setTeamJob(String teamJob) {
		this.teamJob = teamJob;
	}

	public String getRookieTime() {
		return rookieTime;
	}

	public void setRookieTime(String rookieTime) {
		this.rookieTime = rookieTime;
	}

	public String getLastSeen() {
		return lastSeen;
	}

	public void setLastSeen() {
		lastSeen = formatter.format(date);
	}
}
