package com.wfb.csts.emp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;



import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public class Reademployeedao implements IReademployeeDAO {
//	private static final String PERSISTENCE_UNIT_NAME = "employeemodel";
	private static EntityManagerFactory factory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Employeemodel> getClientList() {
		factory = Persistence.createEntityManagerFactory("employeemodel");
	    EntityManager em = factory.createEntityManager();												
	    em.getTransaction().begin(); 
	    em.getEntityManagerFactory().getCache().evictAll();
	    Query query = em.createQuery("SELECT e FROM Employeemodel e");
	    query.setHint("eclipselink.refresh", "true");
	   //   Query query = em.createNativeQuery("SELECT * FROM employeemodel",Employeemodel.class);
	  //  List<Employeemodel> emp = em.createQuery("SELECT e FROM Employeemodel e").getResultList();
	    List<Employeemodel> emp = query.getResultList();
	    em.getTransaction().commit();
	    em.close();
	    return emp;
}

	@Override
	@SuppressWarnings("unchecked")
	public List<Carmodel> carlist() {
		factory = Persistence.createEntityManagerFactory("carmodel");
	    EntityManager em = factory.createEntityManager();												
	    em.getTransaction().begin(); 
	    em.getEntityManagerFactory().getCache().evictAll();
	    Query query = em.createQuery("SELECT e FROM Carmodel e");
	    query.setHint("eclipselink.refresh", "true");
	   //   Query query = em.createNativeQuery("SELECT * FROM employeemodel",Employeemodel.class);
	  //  List<Employeemodel> emp = em.createQuery("SELECT e FROM Employeemodel e").getResultList();
	    List<Carmodel> car = query.getResultList();
	    em.getTransaction().commit();
	    em.close();
	    return car;
	}
	
	@Override
	public Employeemodel getEmployee(Integer EId) {                                           //get Employee
		  factory = Persistence.createEntityManagerFactory("employeemodel");
		    EntityManager em = factory.createEntityManager();												
		    em.getTransaction().begin();
		    Employeemodel emodel = new Employeemodel();
		    emodel = em.find(Employeemodel.class, EId);
		    em.getTransaction().commit();
		    em.close();
		    return emodel;
	}

	
}
