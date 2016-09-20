/**
 * 
 */
package com.teststore.classes;

import com.teststore.database.Good;

/**
 * @author Andrey
 *
 */

public class BasketLine {
	private int quantity;
	private Good good;
	
	public BasketLine (Good good, int quantity){
		this.good = good;
		this.quantity = quantity;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		if(quantity > 0)
			this.quantity = quantity;
	}
	
	public Good getGood() {
		return good;
	}
	
	public void setGood(Good good) {
		this.good = good;
	}
	
	public void add(int quantity)
	{
		setQuantity(this.quantity + quantity);
	}
	
}
