package org.ams.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("keysDao")
public class KeyDaoImpl implements KeyDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<String> getListKeyByListIdQuestions(List<String> ids) {
		Session session = sessionFactory.openSession();
		List<String> list = new ArrayList<String>();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        for (String id : ids) {
	        	Query q = session.createQuery("select contentK from Keys where questionOfKey = '"+id+"'");
		         @SuppressWarnings("rawtypes")
		         List qu = q.list();
		         for (@SuppressWarnings("rawtypes")
				Iterator iterator = qu.iterator(); iterator.hasNext();){
		        	 String key = (String) iterator.next();
		            list.add(key);
		         }
			}
			
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return list;
	}

	
}

