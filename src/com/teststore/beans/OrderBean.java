/**
 * 
 */
package com.teststore.beans;

import java.util.Date;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;



import com.teststore.classes.BasketLine;
import com.teststore.crud.Service;
import com.teststore.database.GoodsInOrder;
import com.teststore.database.Order;
import com.teststore.database.SiteUser;
import com.teststore.database.OrderStatus;
import com.teststore.database.OrderStatusesType;
import com.teststore.debug.Tools;

/**
 * @author Andrey
 *
 */
@ManagedBean
@RequestScoped
public class OrderBean {
	
	@ManagedProperty(value="#{userBean}")
	private UserBean userBean;
	
	@ManagedProperty(value="#{basketBean}")
	private BasketBean basketBean;
	
	private String firstName;
	private String lastName;
	private String middleName;
	private String phone;
	private String address;
	private String email;
	private Order order;
	
	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}

	public BasketBean getBasketBean() {
		return basketBean;
	}

	public void setBasketBean(BasketBean basketBean) {
		this.basketBean = basketBean;
	}

	@PostConstruct
	public void init()
	{
		if(userBean.isLogged())
		{
			firstName = userBean.getFirstName();
			lastName = userBean.getLastName();
			middleName = userBean.getMiddleName();
			phone = userBean.getPhone();
			address = userBean.getAddress();
			email = userBean.getEmail();
		}
	}
	
	public String checkout()
	{
		Tools.writeToLog("1");
		Tools.writeToLog("2");
		//Create order
		order = new Order();
		
		//set fields
		order.setAddress(address);
		order.setEmail(email);
		order.setPhone(phone);
		order.setFirstName(firstName);
		order.setLastName(lastName);
		order.setMiddleName(middleName);
		order.setOrderDate(new Date());
		//Set user
		order.setSiteUser(Service.get(userBean.getLogin(), SiteUser.class));
		
		
	
		//create order in DB
		
		order = Service.add(order);
		
		//Set order status
		
		OrderStatus orderStatus = new OrderStatus();
		orderStatus.setOrderStatusesType(Service.get(1, OrderStatusesType.class));
		orderStatus.setOrder(order);
		orderStatus.setStatusDate(new Date());
		orderStatus = Service.add(orderStatus);
		
		//set goods
		
		for(BasketLine basketLine : basketBean.getBasketLines())
		{
			GoodsInOrder gio = new GoodsInOrder();
			gio.setGood(basketLine.getGood());
			gio.setQuantity(basketLine.getQuantity());
			gio.setOrder(order);
			gio.setPrice(basketLine.getGood().getPrice());
			gio = Service.add(gio);
		}
		
		basketBean.getBasketLines().clear();
		return ("confirmOrder?faces-redirect=true&amp;order_id=" + order.getId());
	}
	
	public int getOrderId() {
		if(order != null)
			return order.getId();
		else
			return 0;
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
	
}
