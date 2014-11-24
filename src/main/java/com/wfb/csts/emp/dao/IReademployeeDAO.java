package com.wfb.csts.emp.dao;

import java.util.List;

import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;

public interface IReademployeeDAO {
	
	List<Employeemodel> getClientList();
	List<Carmodel> carlist();
	public Employeemodel getEmployee(Integer EId);
}
