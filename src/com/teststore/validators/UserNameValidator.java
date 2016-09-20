/**
 * 
 */
package com.teststore.validators;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

import com.teststore.crud.Service;
import com.teststore.database.SiteUser;

/**
 * @author Andrey
 *
 */

@FacesValidator("com.teststore.Username")
public class UserNameValidator implements Validator{

	public void validate(FacesContext context, UIComponent component,
		Object value) throws ValidatorException {
		String userName = value.toString();
		SiteUser user = Service.get(userName, SiteUser.class);
		if(user != null)
		{
			FacesMessage message = com.corejsf.util.Messages.getMessage("com.teststore.resourses.messages", "userExists", null);
			message.setSeverity(FacesMessage. SEVERITY_ERROR);
			throw new ValidatorException(message);
		}
	}
}
