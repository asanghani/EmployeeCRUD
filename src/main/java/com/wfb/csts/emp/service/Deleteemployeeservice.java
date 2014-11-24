package com.wfb.csts.emp.service;

import com.wfb.csts.emp.dao.IDeleteemployeeDAO;

public class Deleteemployeeservice {
	
	public IDeleteemployeeDAO deleteemployeedao;

	public void setDeleteemployeedao(IDeleteemployeeDAO deleteemployeedao) {
		this.deleteemployeedao = deleteemployeedao;
	}

	public void deleteEmployee(Integer eId) {
		
		deleteemployeedao.deleteEmployee(eId);
	}
	
	

}
