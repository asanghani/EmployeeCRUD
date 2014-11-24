package com.wfb.csts.emp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.wfb.csts.emp.model.Employeemodel;



public class Deleteemployeedao implements IDeleteemployeeDAO {
	private static final String PERSISTENCE_UNIT_NAME = "employeemodel";
	private static EntityManagerFactory factory;
	
	@Override
	public void deleteEmployee(Integer EId) {
		factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);     //delete Employee
	    EntityManager em = factory.createEntityManager();												
	     em.getTransaction().begin();
	    Employeemodel emodel = em.find(Employeemodel.class, EId);
	    em.remove(emodel);
	    em.getTransaction().commit();
	    em.close();
	    
		
	}	  

}
