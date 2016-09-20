/**
 * 
 */
package com.teststore.validators;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 * @author Andrey
 *
 */
@FacesValidator("com.teststore.ConfirmPassword")
public class ConfirmPasswordValidator implements Validator{
	public void validate(FacesContext context, UIComponent component,
			Object value) throws ValidatorException {
			UIInput passwordInput = (UIInput)component.findComponent("password");
			String password = passwordInput.getLocalValue().toString();
			String confirmPassword = value.toString();
			if(!password.equals(confirmPassword))
			{
				FacesMessage message = com.corejsf.util.Messages.getMessage("com.teststore.resourses.messages", "confirmPasswordError", null);
				message.setSeverity(FacesMessage. SEVERITY_ERROR);
				throw new ValidatorException(message);
			}
		}
}
