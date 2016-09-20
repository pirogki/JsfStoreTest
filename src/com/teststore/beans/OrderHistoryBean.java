package com.teststore.beans;

import java.math.BigDecimal;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

import com.teststore.classes.OrderTools;
import com.teststore.crud.Service;
import com.teststore.database.Order;
import com.teststore.database.SiteUser;
import com.teststore.debug.Tools;

@ManagedBean
@RequestScoped
public class OrderHistoryBean {
	private SiteUser siteUser;
	
	@ManagedProperty(value="#{userBean}")
	private UserBean userBean;

	@PostConstruct
	public void init()
	{
		siteUser = Service.get(userBean.getLogin(), SiteUser.class);
		for(Order order : siteUser.getOrders())
		{
			Tools.writeToLog("\n" + order.getOrderStatuses());
		}
		
	}

	public SiteUser getSiteUser() {
		return siteUser;
	}

	public void setSiteUser(SiteUser siteUser) {
		this.siteUser = siteUser;
	}

	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}
	
	public BigDecimal countOrderPrice(Order order)
	{
		return OrderTools.countOrderPrice(order);
	}
}
