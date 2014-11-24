package com.wfb.csts.emp.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.wfb.csts.emp.model.Carmodel;
import com.wfb.csts.emp.model.Employeemodel;
import com.wfb.csts.emp.service.Createemployeeservice;
import com.wfb.csts.emp.service.Reademployeeservice;
import com.wfb.csts.emp.validator.CarValidator;
import com.wfb.csts.emp.validator.UserValidator;


@Controller
public class Createemployeecontroller {
	
	public Createemployeeservice createemployeeservice;
	public UserValidator validator;
	
	public void setValidator(UserValidator validator) {
		this.validator = validator;
	}
    public void setCreateemployeeservice(Createemployeeservice createemployeeservice) {
		this.createemployeeservice = createemployeeservice;
	}

	@RequestMapping(value = "/AddForm.do", method = RequestMethod.GET)
	public ModelAndView addform(){
		Reademployeeservice readeamp = new Reademployeeservice();
	//	List<Employeemodel>  emp_list = readeamp.listemp();
	     return new ModelAndView("addform", "emodel", new Employeemodel());
	}
	
	@RequestMapping(value = "/create.do", method = RequestMethod.POST)
	public ModelAndView create(@Valid @ModelAttribute("emodel") Employeemodel emodel,BindingResult result,Model model, SessionStatus status){
		 ModelAndView modelAndView;
		 validator.validate(emodel,result);
		 if (result.hasErrors()){
			 modelAndView = new ModelAndView("addform");
	        }
	    else {
	        	 Employeemodel emp1 = createemployeeservice.write(emodel);
	        	 modelAndView = new ModelAndView("home").addObject("emp", emp1);
	        }
		return modelAndView;	
	}
	
// ---------------------------------------------------------------carcontroller-new-way-----------------------------------------	
	@RequestMapping(value = "/AddcarForm.do", method = RequestMethod.GET)
	public ModelAndView addcarform(){
		
	     return new ModelAndView("addcar", "cmodel", new Carmodel());
	}
	
	@RequestMapping(value = "/createcar.do", method = RequestMethod.POST)
	public ModelAndView createcar(@Valid @ModelAttribute("cmodel") Carmodel cmodel,BindingResult result,Model model){
		CarValidator carvalidator = new CarValidator();
		 carvalidator.validate(cmodel,result);
		 
		 if (result.hasErrors()){
			 return new ModelAndView("addcar","cmodel",cmodel);
	        }
	    
	        	Carmodel emp1 = createemployeeservice.writecar(cmodel);
	        	 return new ModelAndView("addcar");
	      //  	 return new ModelAndView("home","emp1",emp1); other way to return view with object.
			
	}

	
// -------------------------------------------------------------------------------------------------------------------------------	
	// Look for this , it's new from pairprograming tutorial
	
	/*@RequestMapping(method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("/add-new-book.jsp", "book", new Book());
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processForm(@Valid Book newBook, Errors result) --other way to write controller.
	{
		if (result.hasErrors())
		{
			return new ModelAndView("/add-new-book.jsp", "book", newBook);
		}
		bookService.registerNewBook(newBook);
		return new ModelAndView("/book-added.jsp", "title", newBook.getTitle());
	}*/

}
