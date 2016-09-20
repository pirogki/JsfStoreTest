/**
 * 
 */
package com.teststore.beans;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import com.teststore.classes.BasketLine;
import com.teststore.crud.Service;
import com.teststore.database.Good;
/**
 * @author Andrey
 *
 */
@ManagedBean
@SessionScoped
public class BasketBean {
	private List<BasketLine> basketLines = new ArrayList<BasketLine>();
	
	
	public boolean isEmpty()
	{
		return basketLines.isEmpty();
	}
	
	public List<BasketLine> getBasketLines() {
		return basketLines;
	}
	
	/**
	 * 
	 * @param goodId
	 * @return BasketLine by goodId or null
	 */
	
	private BasketLine getBasketLineByGoodId(int goodId)
	{
		BasketLine basketLine = null;
		for(BasketLine item : basketLines)
		{
			if(item.getGood().getId() == goodId)
			{
				basketLine = item;
			}
		}
		return basketLine;
	}
	
	/**
	 * Adding good in basket. Increases by one the quantity of goods in existing basket line, or creates a new one.
	 * @param goodId
	 */
	
	public void addByGoodId(int goodId)
	{
		
		BasketLine basketLine = getBasketLineByGoodId(goodId);
		if(basketLine == null)
		{
			Good good = Service.get(goodId, Good.class);
			basketLines.add(new BasketLine(good, 1));
		}
		else
		{
			basketLine.add(1);
		}
	}
	
	/**
	 * Increases by one the quantity of goods in basket line
	 * @param basketLine
	 */
	
	public void increment(BasketLine basketLine)
	{
		basketLine.add(1);
	}
	
	/**
	 * Decreases by one the quantity of goods in basket line, or remove it, if quantity = 1
	 * @param basketLine
	 */
	
	public void decrement(BasketLine basketLine)
	{
		if(basketLine.getQuantity() == 1)
		{
			
		}
		else
		{
			basketLine.add(-1);
		}
	}
	
	public void remove(BasketLine basketLine)
	{
		basketLines.remove(basketLine);
	}
	
	public BigDecimal getBasketPriceFormated()
	{

		double orderPrice = 0;
		for(BasketLine basketLine : basketLines)
		{
			orderPrice += (basketLine.getGood().getPrice().doubleValue() * basketLine.getQuantity());
		}
		return new BigDecimal(orderPrice);
	}
	
	public int getNumberOfGoods()
	{
		int numberOfGoods = 0;
		for(BasketLine basketLine : basketLines)
		{
			numberOfGoods += basketLine.getQuantity();
		}
		return numberOfGoods;
	}
}
