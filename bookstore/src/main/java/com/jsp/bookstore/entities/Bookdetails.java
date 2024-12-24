package com.jsp.bookstore.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class Bookdetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private String bookName;
private double cost;
private String language;
private String authorName;
@Lob
@Column(name = "image",columnDefinition = "LONGBLOB")
private byte[] image;
public byte[] getImage() {
	return image;
}
public void setImage(byte[] image) {
	this.image = image;
}
private String type;


public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
@ManyToOne
private BookOrder bookorder;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public double getCost() {
	return cost;
}
public void setCost(double cost) {
	this.cost = cost;
}
public String getLanguage() {
	return language;
}
public void setLanguage(String language) {
	this.language = language;
}
public String getAuthorName() {
	return authorName;
}
public void setAuthorName(String authorName) {
	this.authorName = authorName;
}
public BookOrder getBookorder() {
	return bookorder;
}
public void setBookorder(BookOrder bookorder) {
	this.bookorder = bookorder;
}
}
