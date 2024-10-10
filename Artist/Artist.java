package com.Artist;

public class Artist {
	private int id;
	private String Name;
	private String Email;
	private String Country;
	private String Bio;
	private String Username;
	private String Password;
	
	 
	public Artist(int id, String name, String email, String country, String bio, String username, String password) {
		super();
		this.id = id;
		Name = name;
		Email = email;
		Country = country;
		Bio = bio;
		Username = username;
		Password = password;
	}


	public int getId() {
		return id;
	}

	public String getName() {
		return Name;
	}

	public String getEmail() {
		return Email;
	}
	
	public String getCountry() {
		return Country;
	}
	
	public String getBio() {
		return Bio;
	}

	public String getUsername() {
		return Username;
	}

	public String getPassword() {
		return Password;
	}


}
