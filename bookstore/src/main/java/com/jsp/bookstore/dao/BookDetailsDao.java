package com.jsp.bookstore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookstore.entities.Bookdetails;


@Repository
public class BookDetailsDao {
	@Autowired
	EntityManagerFactory emf;
 public void saveBook(Bookdetails bookdetails) {
	 EntityManager em=emf.createEntityManager();
	 EntityTransaction et=em.getTransaction();
	 
	 et.begin();
	 em.persist(bookdetails);
     et.commit();
}
 public void updateBookDetails(Bookdetails bookdetails) {
	 EntityManager em=emf.createEntityManager();
	 EntityTransaction et=em.getTransaction();
	 
	 et.begin();
	 em.merge(bookdetails);
     et.commit();
 }
 public List<Bookdetails> viweAllBookDetails(){
	 EntityManager em=emf.createEntityManager();
	 Query query=em.createQuery("select b from Bookdetails b");
	 return query.getResultList();
 }
 public Bookdetails viewBookdetailsById(int id) {
	 EntityManager em=emf.createEntityManager();
	 Bookdetails bookdetails=em.find(Bookdetails.class,id);
	 return bookdetails;
 }
 public void deleteBookdetailsById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		 Bookdetails bookdetails=em.find(Bookdetails.class,id);
		et.begin();
		em.remove(bookdetails);
		et.commit();
	}
 public byte[] getImageById(int id) {
     EntityManager em = emf.createEntityManager();
     Bookdetails book = em.find(Bookdetails.class, id);
     return book != null ? book.getImage() : null;
 }
}
