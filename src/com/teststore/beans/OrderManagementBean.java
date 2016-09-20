/**
 * 
 */
package com.teststore.beans;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import com.teststore.crud.Service;
import com.teststore.database.Order;

/**
 * @author Andrey
 *
 */
@ManagedBean
@RequestScoped
public class OrderManagementBean {
	private List<Order> orders;
	
	@PostConstruct
	public void init()
	{
		orders = Service.getByNamedQuery("Order.findAll", Order.class);
	}
	
	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
}
