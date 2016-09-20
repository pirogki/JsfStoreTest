/**
 * 
 */
package com.teststore.beans;

import java.math.BigDecimal;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;



import com.teststore.classes.OrderTools;
import com.teststore.crud.Service;
import com.teststore.database.Order;

/**
 * @author Andrey
 *
 */

@ManagedBean
@RequestScoped
public class OrderInfoBean {
	private int orderId;
	private Order order;
	public int getOrderId() {
		return orderId;
	}
	
	public void setOrderId(int orderId) {
		this.orderId = orderId;
		order = Service.get(orderId, Order.class);
	}
	
	public Order getOrder() {
		return order;
	}
	
	/**
	 * 
	 * @return formated cost of the order
	 */
	
	public BigDecimal getOrderPriceFormated()
	{
		return OrderTools.countOrderPrice(order);
	}
	
}
