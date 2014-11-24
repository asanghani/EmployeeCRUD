package com.wfb.csts.emp.service;

import com.wfb.csts.emp.dao.ICreateemployeeDAO;
import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public class Createemployeeservice {
	
	private ICreateemployeeDAO createemployeedao;
	
	public void setCreateemployeedao(ICreateemployeeDAO createemployeedao) {
		this.createemployeedao = createemployeedao;
	}
	public Employeemodel write(Employeemodel emp){
		emp = createemployeedao.addEmployee(emp);
		 return emp;
	}
	public Carmodel writecar(Carmodel car){
		return createemployeedao.addCar(car);
		
	}
}
