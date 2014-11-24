package com.wfb.csts.emp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public class Createemployeedao implements ICreateemployeeDAO  {
	
	//private static final String PERSISTENCE_UNIT_NAME = "employeemodel";
	  private static EntityManagerFactory factory;
	
	  
	  @Override
	  public Employeemodel addEmployee(Employeemodel employee) {						               // Create new Employee
		    factory = Persistence.createEntityManagerFactory("employeemodel");
		    EntityManager em = factory.createEntityManager();												
		    em.getTransaction().begin();
		    em.persist(employee);
		    em.getTransaction().commit();
		    em.close();
		    return employee;		 
	  }


	@Override
	public Carmodel addCar(Carmodel car) {
		factory = Persistence.createEntityManagerFactory("carmodel");
	    EntityManager em = factory.createEntityManager();												
	    em.getTransaction().begin();
	    em.persist(car);
	    em.getTransaction().commit();
	    em.close();
	    return car;
	}
}
