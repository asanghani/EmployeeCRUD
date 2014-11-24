package com.wfb.csts.emp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.wfb.csts.emp.model.Employeemodel;
import com.wfb.csts.emp.service.Updateemployeeservice;


@Controller
public class Updateemployeecontroller {
	public Updateemployeeservice updateemployeeservice;
	
	public void setUpdateemployeeservice(Updateemployeeservice updateemployeeservice) {
		this.updateemployeeservice = updateemployeeservice;
	}

	@RequestMapping(value = "/UpdateForm.do", method = RequestMethod.GET)
	public ModelAndView updateform(){
	     return new ModelAndView("updateform1", "emodel", new Employeemodel());
	}
	
	@RequestMapping(value = "/readforupdate.do", method = RequestMethod.POST)
	public ModelAndView readforupdate(@ModelAttribute("emodel") Employeemodel emodel,BindingResult result, SessionStatus status){
		
		ModelAndView modelAndView = new ModelAndView("updateform2");
		Integer EId = emodel.getEId();
		//Employeemodel emp1 = eservice.read(EId);
		//modelAndView.addObject("emp1", emp1);
		
		return modelAndView;
}
	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("model") Employeemodel emodel,BindingResult result, SessionStatus status){
		
		ModelAndView modelAndView = new ModelAndView("welcome");
		//EmployeeService eservice = new EmployeeService();
		Integer EId = emodel.getEId();
	//	eservice.update(emodel);
		
		
		return modelAndView;
}

}
