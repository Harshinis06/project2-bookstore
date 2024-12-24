package com.jsp.bookstore.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private String name;
private long mobilenumber;
@Column(nullable=false,unique=true)
private String email;
@Column(unique=true)
private String password;

@OneToMany
private List<BookOrder> bookorder;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}
public long getMobilenumber() {
	return mobilenumber;
}

public void setMobilenumber(long mobilenumber) {
	this.mobilenumber = mobilenumber;
}



public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public List<BookOrder> getBookorder() {
	return bookorder;
}

public void setBookorder(List<BookOrder> bookorder) {
	this.bookorder = bookorder;
}
}
