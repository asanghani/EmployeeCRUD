package com.wfb.csts.emp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.wfb.csts.emp.model.Employeemodel;

public class Updateemployeedao implements IUpdateemployeeDAO {
	private static final String PERSISTENCE_UNIT_NAME = "employeemodel";
	private static EntityManagerFactory factory;
	
	@Override
	public void updateEmployee(Employeemodel Employee) {
		
		factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
	    EntityManager em = factory.createEntityManager();												
	    em.getTransaction().begin();
	   Employeemodel emodel = em.find(Employeemodel.class, Employee.getEId());
	    em.remove(emodel);
	    em.persist(Employee);
	    em.getTransaction().commit();
	    em.close();
	}

}
