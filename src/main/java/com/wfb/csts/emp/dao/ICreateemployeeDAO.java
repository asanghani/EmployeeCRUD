package com.wfb.csts.emp.dao;

import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public interface ICreateemployeeDAO {
	
	public Employeemodel addEmployee(Employeemodel employee);
	public Carmodel addCar(Carmodel car);
}
