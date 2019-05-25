package com.shachar.first;

//import static com.shachar.first.Utils.*;

import java.util.Date;

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
	private Date lastSeen;
	private boolean isAdmin;

	public User(String username, String password, String email, String compType, String teamNumber, String country,
			String teamJob, String rookieTime, boolean isAdmin) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.compType = compType;
		this.teamNumber = teamNumber;
		this.country = country;
		this.teamJob = teamJob;
		this.rookieTime = rookieTime;
		lastSeen = new Date();
		this.isAdmin = isAdmin;
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

	public Date getLastSeen() {
		return lastSeen;
	}
	public void setLastSeenNow() {
		lastSeen = new Date();
	}

	public void setLastSeen(Date lastSeen) {
		this.lastSeen = lastSeen;
	}

	public boolean getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj == null) return false;
		if(!(obj instanceof User)) return false;
		User theUser = (User)obj;
		return theUser.username.equals(username);
	} 
}
