package classes;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class UserValidator implements Validator  {

	@Override
	public boolean supports(Class<?> clazz) {
		return Users.class.equals(clazz);
		
	}

	@Override
	public void validate(Object obj, Errors arg1) {
		ValidationUtils.rejectIfEmpty(arg1, "username", "user.name.empty");
	      ValidationUtils.rejectIfEmpty(arg1, "password", "user.password.empty");
	      ValidationUtils.rejectIfEmpty(arg1, "conformpassword", "user.conformpassword.empty");
	      ValidationUtils.rejectIfEmpty(arg1, "gender", "user.gender.empty");
	      ValidationUtils.rejectIfEmpty(arg1, "dob", "user.dob.empty");
	      ValidationUtils.rejectIfEmpty(arg1, "country", "user.country.empty");
	
	      
	      Users user=(Users) obj;
	   
	      if(user.getPassword()!=user.getConformpassword()) {
	    	  arg1.rejectValue("conformpassword", "user.conformpassword.invalid");
	      }
	}

	
}
