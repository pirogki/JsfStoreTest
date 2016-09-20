package com.teststore.database;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the order_statuses_types database table.
 * 
 */
@Entity
@Table(name="order_statuses_types")
@NamedQuery(name="OrderStatusesType.findAll", query="SELECT o FROM OrderStatusesType o")
public class OrderStatusesType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String name;

	//bi-directional many-to-one association to OrderStatus
	@OneToMany(mappedBy="orderStatusesType")
	private List<OrderStatus> orderStatuses;

	public OrderStatusesType() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<OrderStatus> getOrderStatuses() {
		return this.orderStatuses;
	}

	public void setOrderStatuses(List<OrderStatus> orderStatuses) {
		this.orderStatuses = orderStatuses;
	}

	public OrderStatus addOrderStatus(OrderStatus orderStatus) {
		getOrderStatuses().add(orderStatus);
		orderStatus.setOrderStatusesType(this);

		return orderStatus;
	}

	public OrderStatus removeOrderStatus(OrderStatus orderStatus) {
		getOrderStatuses().remove(orderStatus);
		orderStatus.setOrderStatusesType(null);

		return orderStatus;
	}

}