package com.jsp.bookstore.dao;

import javax.persistence.Query;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookstore.entities.Admin;

@Repository
public class AdminDao {
	@Autowired
	EntityManagerFactory emf;
	public void saveAdmin(Admin admin) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(admin);
		et.commit();
	} 
	public void updateAdmin(Admin admin) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(admin);
		et.commit();
	}
	public List<Admin> viewAlladmin() {
		EntityManager em=emf.createEntityManager();
		Query query=em.createQuery("select a from Admin a");
		return query.getResultList();
	}
	public void deleteAdminById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Admin a=em.find(Admin.class,id);
		et.begin();
		em.remove(a);
		et.commit();
	}
	public Admin adminLogin(String email,String password) {
		EntityManager em=emf.createEntityManager();
		Query query=em.createQuery("select a from Admin a where a.email=?1 and a.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		List<Admin> admin=query.getResultList();
		if(admin.size()>0) return admin.get(0);
		else return null;
	}
}
