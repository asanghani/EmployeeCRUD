package com.wfb.csts.emp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;
import com.wfb.csts.emp.service.Reademployeeservice;

@Controller
public class Reademployeecontroller {
	
	
	@RequestMapping(value = "/GetForm.do", method = RequestMethod.GET)
	public ModelAndView getform(){
	     return new ModelAndView("getform", "emodel", new Employeemodel());
	}
	
	public Reademployeeservice reademployeeservice;
	
	public void setReademployeeservice(Reademployeeservice reademployeeservice) {
		this.reademployeeservice = reademployeeservice;
	}
	
	@RequestMapping(value = "/read.do", method = RequestMethod.POST)
	public ModelAndView read(@ModelAttribute("emodel") Employeemodel emodel,BindingResult result, SessionStatus status){
		ModelAndView modelAndView;
		List<Employeemodel> emp1 = null;
		List<Carmodel> carlist = null;
		emp1 = reademployeeservice.listemp();
		carlist = reademployeeservice.listofcar();
		
		Map<String, Object> model = new HashMap<String, Object>();
        model.put("emp1", emp1);
        model.put("carlist", carlist);
	
		modelAndView = new ModelAndView("listemp2","model", model);
		return modelAndView;
}
	
}
