package org.ams.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Sessions;
import org.hibernate.Session;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("sessionDao")
public class SessionDaoImpl extends AbstractDao<String, Sessions> implements SessionDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createSession(String id, String idQ) {
		Sessions se = new Sessions();
		se.setIdSession(id);
		se.setIdQuestion(idQ);
		persist(se);
	}

	@Override
	public long getCurrentPosition() {
		Session session = sessionFactory.openSession();
		 Transaction tx = null;
		 long result = 0;
	      try {
	         tx = session.beginTransaction();
	         @SuppressWarnings("rawtypes")
			List students = session.createQuery("select count (*) FROM Sessions").list(); 
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = students.iterator(); iterator.hasNext();){
	        	 result = (long) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return result;
	}

	@Override
	public Sessions getSessionByPosition(int position) {
		Session session = sessionFactory.openSession();
		Sessions result = new Sessions();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery(" from Sessions");
			 q.setFirstResult(position);
	         q.setMaxResults(position + 1);
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	result = (Sessions) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return result;
	}

	@Override
	public void saveAnswer(Sessions session, String answer) {
		Query query = getSession().createSQLQuery("update Session set answer = :answer where idSession = :idSession and idQuestion = :idQuestion");
		query.setString("answer", answer);
		query.setString("idSession", session.getIdSession());
		query.setString("idQuestion", session.getIdQuestion());
		query.executeUpdate();
	}

	@Override
	public List<Sessions> getListSessionByPosition(int position) {
		List<Sessions> sessions = new ArrayList<Sessions>();
		Sessions session = null;
		for (int i = position; i < position + 5; i++) {
			session = getSessionByPosition(i);
			sessions.add(session);
		}
		return sessions;
	}

	@Override
	public List<String> getListIdSessionByIdAccount(String idAccount) {
		ArrayList<String> list = new ArrayList<String>();
		Session session = sessionFactory.openSession();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select idSession from Sessions where idSession like '"+idAccount+"%'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 list.add((String) iterator.next());
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
	public List<String> getAllIdSession() {
		ArrayList<String> list = new ArrayList<String>();
		Session session = sessionFactory.openSession();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select idSession from Sessions");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 list.add((String) iterator.next());
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
