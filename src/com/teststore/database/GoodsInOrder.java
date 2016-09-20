package com.teststore.database;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the goods_in_orders database table.
 * 
 */
@Entity
@Table(name="goods_in_orders")
@NamedQuery(name="GoodsInOrder.findAll", query="SELECT g FROM GoodsInOrder g")
public class GoodsInOrder implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private BigDecimal price;

	private int quantity;

	//bi-directional many-to-one association to Good
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="goods_id")
	private Good good;

	//bi-directional many-to-one association to Order
	@ManyToOne(fetch=FetchType.LAZY)
	private Order order;

	public GoodsInOrder() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Good getGood() {
		return this.good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

}