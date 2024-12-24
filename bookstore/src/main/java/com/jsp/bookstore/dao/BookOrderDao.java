package com.jsp.bookstore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookstore.entities.BookOrder;


@Repository
public class BookOrderDao {
	@Autowired
	EntityManagerFactory emf;
public void savebookorder(BookOrder bookorder) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	et.begin();
	em.persist(bookorder);
	et.commit();
}
public List<BookOrder> viewAllBookOrder(){
	EntityManager em=emf.createEntityManager();
	Query query=em.createQuery("select b from BookOrder b");
	return query.getResultList();
}
public BookOrder viewbookorderById(int id) {
	EntityManager em=emf.createEntityManager();
	BookOrder bookorder=em.find(BookOrder.class, id);
	return bookorder;
}

public void updatebookorder(BookOrder bookorder) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	et.begin();
	em.merge(bookorder);
	et.commit();
}
public void deletebookorderById(int id) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	BookOrder bookorder=em.find(BookOrder.class, id);
	et.begin();
	em.remove(bookorder);
	et.commit();
}
}
