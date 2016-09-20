/**
 * 
 */
package com.teststore.beans;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.annotation.PostConstruct;
import java.util.List;
import com.teststore.database.Good;
import com.teststore.crud.*;

/**
 * @author Andrey
 *
 */

@ManagedBean
@RequestScoped
public class CatalogBean {
	private List<Good> goods;
	
	public List<Good> getGoods() {
		return goods;
	}

	@PostConstruct
	public void init()
	{
		goods = Service.getByNamedQuery("Good.findAll", Good.class); 
	}
}
