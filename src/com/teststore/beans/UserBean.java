/**
 * 
 */
package com.teststore.beans;

import java.io.Serializable;

import javax.faces.bean.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import com.teststore.database.SiteUser;
import com.teststore.classes.Md5;
import com.teststore.crud.*;

/**
 * @author Andrey
 *
 */

@ManagedBean
@SessionScoped
public class UserBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String login;
	private String password;
	private String confirmPasword;
	private String firstName;
	private String lastName;
	private String middleName;
	private String phone;
	private String address;
	private String email;
	private boolean logged = false;
	private boolean admin = false;
	
	public String getConfirmPasword() {
		return confirmPasword;
	}

	public void setConfirmPasword(String confirmPasword) {
		this.confirmPasword = confirmPasword;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}

	public String getLogin() {
		return login;
	}
	
	public void setLogin(String login) {
		this.login = login;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isLogged() {
		return logged;
	}
	
	public boolean isAdmin() {
		return admin;
	}

    /**
     * 
     * @return String "nologin" or "success" if password is correct 
     */
	
	public String login() 
	{
		String password = this.password;
		this.password = null;
		
		if(password == null || password.length() == 0)
			return "nologin";
		
		SiteUser user = Service.get(login, SiteUser.class);
		if(user == null)
			return "nologin";
			
		 if(Md5.get(password).equals(user.getPasswordHash()))
		 {
			 logged = true;
			 if(user.getUserRole().getId() == 2)
			 {
				 admin = true;
				
			 }
			 login = user.getUserName();
			 firstName = user.getFirstName();
			 lastName = user.getLastName();
			 middleName = user.getMiddleName();
			 address = user.getAddress();
			 email = user.getEmail();
			 phone = user.getPhone();
			 return "success";
		 }
		 return "nologin";
	}
	
	public String logout() {
	        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
	        return "/index.xhtml?faces-redirect=true";
    }
	
	public String registration() {
		SiteUser user = new SiteUser();
		user.setAddress(address);
		user.setEmail(email);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setMiddleName(middleName);
		user.setPhone(phone);
		user.setUserName(login);
		user.setPasswordHash(Md5.get(password));
		Service.add(user);
		logged = true;
		password = null;
		return "welcome";
	}
	
	public String update() { 
		
		SiteUser user = Service.get(login, SiteUser.class);
		user.setAddress(address);
		user.setEmail(email);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setMiddleName(middleName);
		user.setPhone(phone);
		if(password.length() > 0)
			user.setPasswordHash(Md5.get(password));
		Service.update(user);
		logged = true;
		password = null;
		return "personalSucsess";
	}
}
