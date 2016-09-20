/**
 * 
 */
package com.teststore.classes;

import java.math.BigDecimal;

import com.teststore.database.GoodsInOrder;
import com.teststore.database.Order;

/**
 *  static class for work with orders
 * @author Andrey
 *
 */
public class OrderTools {
	
	/**
	 * calculates the order price
	 * @param order
	 * @return order price
	 */
	
	static public BigDecimal countOrderPrice(Order order)
	{
		double orderPrice = 0;
		if(order.getGoodsInOrders() != null)
		for(GoodsInOrder goodInOrder : order.getGoodsInOrders())
		{
			orderPrice += (goodInOrder.getPrice().doubleValue() * goodInOrder.getQuantity());
		}
		return new BigDecimal(orderPrice);
	}
}
