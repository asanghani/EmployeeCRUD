package com.wfb.csts.emp.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.wfb.csts.emp.model.Employeemodel;

	public class UserValidator implements Validator {
		@Override
	    public boolean supports(Class clazz) {
	      return Employeemodel.class.equals(clazz);
	    }

	    @Override
	    public void validate(Object target, Errors errors) {

	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "EId",       "required.EId",         "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "FirstName", "required.FirstName",   "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "MiddleName","required.MiddleName",  "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "LastName",  "required.LastName",    "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Age",       "required.Age",         "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Phone",     "required.Phone",       "Field name is required.");
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Address",   "required.Address",     "Field name is required.");

	    }
	
	
	
}
