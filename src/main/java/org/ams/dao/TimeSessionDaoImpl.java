package org.ams.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.ams.model.TimeSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("timeSessionDao")
public class TimeSessionDaoImpl extends AbstractDao<String, TimeSession> implements TimeSessionDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createTimeSession(String id, Date timeStart, Date timeEnd) {
		TimeSession timeS = new TimeSession();
		timeS.setIdSession(id);
		timeS.setTimeStart(timeStart);
		timeS.setTimeEnd(timeEnd);
		persist(timeS);
	}

	@Override
	public Date getTimeEndByIdSession(String id) {
		Session session = sessionFactory.openSession();
		Date date = null;
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select timeEnd from TimeSession where idSession = '"+id+"'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 date = (Date) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return date;
	}

	@Override
	public List<String> getQuestionsByIdSession(String idSession) {
		Session session = sessionFactory.openSession();
		List<String> list = new ArrayList<String>();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select idQuestion from Sessions where idSession = '"+idSession+"'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 String id = (String) iterator.next();
	            list.add(id);
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

	@Override
	public List<String> getAnswersByIdSession(String idSession) {
		Session session = sessionFactory.openSession();
		List<String> list = new ArrayList<String>();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select answer from Sessions where idSession = '"+idSession+"'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 String id = (String) iterator.next();
	            list.add(id);
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

	@Override
	public String getIdByUserIfAvailable(String idUser) {
		Session session = sessionFactory.openSession();
		String id = "";
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select idSession from TimeSession where idSession like '"+idUser+"%'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 id = (String) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return id;
	}

}
