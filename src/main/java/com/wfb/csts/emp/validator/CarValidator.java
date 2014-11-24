package com.wfb.csts.emp.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.wfb.csts.emp.model.Carmodel;


public class CarValidator implements Validator {
	
	@Override
    public boolean supports(Class clazz) {
      return Carmodel.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "manufacturer",   "required.manufacturer",     "Field name is required.");
    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "carnumber",   "required.carnumber",     "Field name is required.");
    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "car_model",   "required.car_model",     "Field name is required.");
    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "carid",   "required.carid",     "Field name is required.");
    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "eid",   "required.eid",     "Field name is required.");

    }

}
