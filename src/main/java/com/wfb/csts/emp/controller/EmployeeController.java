package com.wfb.csts.emp.controller;
//import javax.servlet.http.HttpServletRequest;

//hellow

//@Controller
public class EmployeeController {
	
//	@RequestMapping(value = "/AddForm.do", method = RequestMethod.GET)
//	public ModelAndView addform(){
//	     return new ModelAndView("addform", "model", new Model());
//	}
//	@RequestMapping(value = "/GetForm.do", method = RequestMethod.GET)
//	public ModelAndView getform(){
//	     return new ModelAndView("getform", "model", new Model());
//	}
//	@RequestMapping(value = "/DeleteForm.do", method = RequestMethod.GET)
//	public ModelAndView deleteform(){
//	     return new ModelAndView("deleteform", "model", new Model());
//	}
//	@RequestMapping(value = "/UpdateForm.do", method = RequestMethod.GET)
//	public ModelAndView updateform(){
//	     return new ModelAndView("updateform1", "model", new Model());
//	}
//	
//	@RequestMapping(value = "/create.do", method = RequestMethod.POST)
//	public ModelAndView create(@ModelAttribute("model") Model model,BindingResult result, SessionStatus status){
//		
//		ModelAndView modelAndView = new ModelAndView("home");
//		EmployeeService eservice = new EmployeeService();
//		Model emp1 = eservice.write(model);
//	    modelAndView.addObject("emp1", emp1);
//		
//		return modelAndView;	
//	}
//	
//	@RequestMapping(value = "/read.do", method = RequestMethod.POST)
//	public ModelAndView read(@ModelAttribute("model") Model emodel,BindingResult result, SessionStatus status){
//		
//		ModelAndView modelAndView = new ModelAndView("home");
//		EmployeeService eservice = new EmployeeService();
//		String EId = emodel.getEId();
//		Model emp1 = eservice.read(EId);
//		modelAndView.addObject("emp1", emp1);
//		
//		return modelAndView;
//}
//	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
//	public ModelAndView delete(@ModelAttribute("model") Model emodel,BindingResult result, SessionStatus status){
//		
//		ModelAndView modelAndView = new ModelAndView("home");
//		EmployeeService eservice = new EmployeeService();
//		String EId = emodel.getEId();
//		eservice.remove(EId);
//		Model emp1 = emodel;
//		modelAndView.addObject("emp1", emp1);
//		return modelAndView;
//}
//	@RequestMapping(value = "/readforupdate.do", method = RequestMethod.POST)
//	public ModelAndView readforupdate(@ModelAttribute("model") Model emodel,BindingResult result, SessionStatus status){
//		
//		ModelAndView modelAndView = new ModelAndView("updateform2");
//		EmployeeService eservice = new EmployeeService();
//		String EId = emodel.getEId();
//		Model emp1 = eservice.read(EId);
//		modelAndView.addObject("emp1", emp1);
//		
//		return modelAndView;
//}
//	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
//	public ModelAndView update(@ModelAttribute("model") Model emodel,BindingResult result, SessionStatus status){
//		
//		ModelAndView modelAndView = new ModelAndView("welcome");
//		EmployeeService eservice = new EmployeeService();
//		String EId = emodel.getEId();
//		eservice.update(emodel);
//		
//		
//		return modelAndView;
//}
}