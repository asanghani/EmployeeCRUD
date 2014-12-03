package com.wfb.csts.emp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;
import com.wfb.csts.emp.service.Reademployeeservice;

@Controller
public class Commonemployeecontroller {
	
	public List<Employeemodel> emp_list;
	public Reademployeeservice reademployeeservice;
	
	public void setReademployeeservice(Reademployeeservice reademployeeservice) {
		this.reademployeeservice = reademployeeservice;
	}
	
	@RequestMapping("/welcome")
	public String printWelcome(ModelMap model) {
		return "welcome";
 
	}
	
	@RequestMapping(value = "/LoadForm.do", method = RequestMethod.GET)
	public ModelAndView create(@Valid @ModelAttribute("emodel") Employeemodel emodel,BindingResult result, Model model, SessionStatus status){
		ModelAndView modelAndView;
	//	emp_list = reademployeeservice.listemp();
		 model.addAttribute("emp_list", reademployeeservice.listemp());
		//model.addAttribute(emp_list);
		modelAndView = new ModelAndView("load");
		return modelAndView;
	}
	
	@RequestMapping(value = "/ajaxformrequest.do", method = RequestMethod.GET)
	public ModelAndView onchange(@Valid @ModelAttribute("emodel") Employeemodel emodel,BindingResult result,Model model, SessionStatus status){

		ModelAndView modelAndView;
		List<Employeemodel> emp1 = null;
		List<Carmodel> carlist = null;
		emp1 = reademployeeservice.listemp();
		carlist = reademployeeservice.listofcar();
		
		Map<String, Object> modelobj = new HashMap<String, Object>();
        modelobj.put("emp1", emp1);
        modelobj.put("carlist", carlist);
	
		modelAndView = new ModelAndView("ajax","model", modelobj);
		return modelAndView;
	}
	
	//-----------------------------------------------------------------ajax call
	@RequestMapping(value = "/ajaxupdate", method = RequestMethod.GET)
	public @ResponseBody Employeemodel ajaxupdate(@RequestParam("empid") Integer id){
		System.out.println(id);
		
		return reademployeeservice.getEmployee(id);	
	}
	
	
	@RequestMapping(value = "/ajaxform.do", method = RequestMethod.GET)
	public ModelAndView addcarform(){
		
	     return new ModelAndView("ajax", "cmodel", new Carmodel());
	}
	
	//----------------------------------------------Ajax-form-fill----------------------------------------------------------------
	@RequestMapping(value = "/Ajaxformfill.do", method = RequestMethod.GET)
	public ModelAndView ajaxform(@Valid @ModelAttribute("emodel") Employeemodel emodel,BindingResult result,Model model, SessionStatus status){

		ModelAndView modelAndView;
		List<Employeemodel> emp1 = null;
		List<Carmodel> carlist = null;
		emp1 = reademployeeservice.listemp();
		carlist = reademployeeservice.listofcar();
		
		Map<String, Object> modelobj = new HashMap<String, Object>();
        modelobj.put("emp1", emp1);
        modelobj.put("carlist", carlist);
	
		modelAndView = new ModelAndView("ajax-form-fill","model", modelobj);
		return modelAndView;
	}
	
	
}
