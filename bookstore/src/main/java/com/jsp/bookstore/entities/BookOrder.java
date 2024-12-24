package com.jsp.bookstore.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class BookOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private long mobilenumber;
private double totalbill;
@ManyToOne
private User user;
//@OneToMany
//private List<Bookdetails> Bookdetails;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public long getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(long mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public double getTotalbill() {
	return totalbill;
}
public void setTotalbill(double totalbill) {
	this.totalbill = totalbill;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
//public List<Bookdetails> getBookdetails() {
//	return Bookdetails;
//}
//public void setBookdetails(List<Bookdetails> bookdetails) {
//	Bookdetails = bookdetails;
//}
}
