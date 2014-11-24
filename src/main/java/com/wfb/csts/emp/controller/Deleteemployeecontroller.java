package com.wfb.csts.emp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.wfb.csts.emp.model.Employeemodel;
import com.wfb.csts.emp.service.Deleteemployeeservice;
@Controller
public class Deleteemployeecontroller {
	
	public Deleteemployeeservice deleteemployeeservice;
	//test
	public void setDeleteemployeeservice(Deleteemployeeservice deleteemployeeservice) {
		this.deleteemployeeservice = deleteemployeeservice;
	}

	@RequestMapping(value = "/DeleteForm.do", method = RequestMethod.GET) 
	public ModelAndView deleteform(){
	     return new ModelAndView("deleteform", "emodel", new Employeemodel());
	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public ModelAndView delete(@ModelAttribute("emodel") Employeemodel emodel,BindingResult result, SessionStatus status){
		
		ModelAndView modelAndView = new ModelAndView("welcome");
		Integer EId = emodel.getEId();
		deleteemployeeservice.deleteEmployee(EId);
		Employeemodel emp1 = emodel;
		modelAndView.addObject("emp1", emp1);
		return modelAndView;
}

}
