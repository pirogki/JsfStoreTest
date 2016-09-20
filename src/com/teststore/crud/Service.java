/**
 * 
 */
package com.teststore.crud;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;


/**
 * @author Andrey
 *
 */
public class Service {

	private static EntityManager getEntityManager()
	{
		return Persistence.createEntityManagerFactory("TestStore").createEntityManager();
	}
	
	public static <T> T add(T entity){
		EntityManager em = getEntityManager();
        em.getTransaction().begin();
        T TFromDB = em.merge(entity);
        em.getTransaction().commit();
        return TFromDB;
    }
 
    public static <T> void delete(Object  primaryKey, Class<T> entryClass){
    	EntityManager em = getEntityManager();
        em.getTransaction().begin();
        em.remove(get(primaryKey, entryClass));
        em.getTransaction().commit();
    }
    
    /**
     * 
     * @param primaryKey
     * @param entryClass class of entity
     * @return Entity by primeryKey or null, if entity not found
     */
    
    public static <T> T get(Object  primaryKey, Class<T> entryClass){
    	EntityManager em = getEntityManager();
        return em.find(entryClass, primaryKey);
    }
 
    public static <T> void update(T entity){
    	EntityManager em = getEntityManager();
        em.getTransaction().begin();
        em.merge(entity);
        em.getTransaction().commit();
    }
 
    public static <T> List<T> getByNamedQuery(String queryName, Class<T> entryClass){
    	EntityManager em = getEntityManager();
        TypedQuery<T> namedQuery = em.createNamedQuery(queryName, entryClass);
        return namedQuery.getResultList();
    }
}
