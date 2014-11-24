package com.wfb.csts.emp.service;

import java.util.List;

import com.wfb.csts.emp.dao.IReademployeeDAO;
import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public class Reademployeeservice {
	
	public IReademployeeDAO reademployeedao;

	public void setReademployeedao(IReademployeeDAO reademployeedao) {
		this.reademployeedao = reademployeedao;
	}
	
	public List<Employeemodel> listemp(){
		List<Employeemodel> emp = reademployeedao.getClientList();
		return emp;
	}
	
	public List<Carmodel> listofcar(){
		Employeemodel test = reademployeedao.getEmployee(1);
		return reademployeedao.carlist();
	}
	
	public Employeemodel getEmployee(Integer EId){
		return reademployeedao.getEmployee(EId);
	}
}
