package com.teststore.database;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the goods database table.
 * 
 */
@Entity
@Table(name="goods")
@NamedQuery(name="Good.findAll", query="SELECT g FROM Good g")
public class Good implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Lob
	private String description;

	private byte enabled;

	private String name;

	private BigDecimal price;

	//bi-directional many-to-one association to Brand
	@ManyToOne(fetch=FetchType.LAZY)
	private Brand brand;

	//bi-directional many-to-one association to Image
	@ManyToOne(fetch=FetchType.LAZY)
	private Image image;

	//bi-directional many-to-one association to ProductCategory
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="product_categories_id")
	private ProductCategory productCategory;

	//bi-directional many-to-one association to GoodsInOrder
	@OneToMany(mappedBy="good")
	private List<GoodsInOrder> goodsInOrders;

	public Good() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte getEnabled() {
		return this.enabled;
	}

	public void setEnabled(byte enabled) {
		this.enabled = enabled;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Brand getBrand() {
		return this.brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Image getImage() {
		return this.image;
	}

	public void setImage(Image image) {
		this.image = image;
	}

	public ProductCategory getProductCategory() {
		return this.productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public List<GoodsInOrder> getGoodsInOrders() {
		return this.goodsInOrders;
	}

	public void setGoodsInOrders(List<GoodsInOrder> goodsInOrders) {
		this.goodsInOrders = goodsInOrders;
	}

	public GoodsInOrder addGoodsInOrder(GoodsInOrder goodsInOrder) {
		getGoodsInOrders().add(goodsInOrder);
		goodsInOrder.setGood(this);

		return goodsInOrder;
	}

	public GoodsInOrder removeGoodsInOrder(GoodsInOrder goodsInOrder) {
		getGoodsInOrders().remove(goodsInOrder);
		goodsInOrder.setGood(null);

		return goodsInOrder;
	}

}