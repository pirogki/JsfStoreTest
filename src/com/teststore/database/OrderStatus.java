package com.teststore.database;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the order_statuses database table.
 * 
 */
@Entity
@Table(name="order_statuses")
@NamedQuery(name="OrderStatus.findAll", query="SELECT o FROM OrderStatus o")
public class OrderStatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="status_date")
	private Date statusDate;

	//bi-directional many-to-one association to OrderStatusesType
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="status_id")
	private OrderStatusesType orderStatusesType;

	//bi-directional many-to-one association to Order
	@ManyToOne(fetch=FetchType.LAZY)
	private Order order;

	public OrderStatus() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getStatusDate() {
		return this.statusDate;
	}

	public void setStatusDate(Date statusDate) {
		this.statusDate = statusDate;
	}

	public OrderStatusesType getOrderStatusesType() {
		return this.orderStatusesType;
	}

	public void setOrderStatusesType(OrderStatusesType orderStatusesType) {
		this.orderStatusesType = orderStatusesType;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

}