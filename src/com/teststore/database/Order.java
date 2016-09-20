package com.teststore.database;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;
import java.util.List;

/**
 * The persistent class for the orders database table.
 * 
 */
@Entity
@Table(name="orders")
@NamedQuery(name="Order.findAll", query="SELECT o FROM Order o")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String address;

	private String email;

	@Column(name="first_name")
	private String firstName;

	@Column(name="last_name")
	private String lastName;

	@Column(name="middle_name")
	private String middleName;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="order_date")
	private Date orderDate;

	private String phone;

	//bi-directional many-to-one association to GoodsInOrder
	@OneToMany(mappedBy="order")
	private List<GoodsInOrder> goodsInOrders;

	//bi-directional many-to-one association to OrderStatus
	@OneToMany(mappedBy="order")
	@OrderBy("statusDate DESC")
	private List<OrderStatus> orderStatuses;

	//bi-directional many-to-one association to SiteUser
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_name")
	private SiteUser siteUser;

	public Order() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<GoodsInOrder> getGoodsInOrders() {
		return this.goodsInOrders;
	}

	public void setGoodsInOrders(List<GoodsInOrder> goodsInOrders) {
		this.goodsInOrders = goodsInOrders;
	}

	public GoodsInOrder addGoodsInOrder(GoodsInOrder goodsInOrder) {
		getGoodsInOrders().add(goodsInOrder);
		goodsInOrder.setOrder(this);

		return goodsInOrder;
	}

	public GoodsInOrder removeGoodsInOrder(GoodsInOrder goodsInOrder) {
		getGoodsInOrders().remove(goodsInOrder);
		goodsInOrder.setOrder(null);

		return goodsInOrder;
	}

	public List<OrderStatus> getOrderStatuses() {
		return this.orderStatuses;
	}

	public void setOrderStatuses(List<OrderStatus> orderStatuses) {
		this.orderStatuses = orderStatuses;
	}

	public OrderStatus addOrderStatus(OrderStatus orderStatus) {
		getOrderStatuses().add(orderStatus);
		orderStatus.setOrder(this);

		return orderStatus;
	}

	public OrderStatus removeOrderStatus(OrderStatus orderStatus) {
		getOrderStatuses().remove(orderStatus);
		orderStatus.setOrder(null);

		return orderStatus;
	}

	public SiteUser getSiteUser() {
		return this.siteUser;
	}

	public void setSiteUser(SiteUser siteUser) {
		this.siteUser = siteUser;
	}
	
}