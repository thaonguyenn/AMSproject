package org.ams.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Question;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("questionDao")
public class QuestionDaoImpl implements QuestionDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Question> findQuestionByTypeAndLevel(int amount, String type, String level) {
		Session session = sessionFactory.openSession();
		List<Question> list = new ArrayList<Question>();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery(" from Question where idType = '"+type+"' and idLevel = '"+level+"' order by NEWID()");
	         q.setMaxResults(amount);
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 Question student = (Question) iterator.next();
	            list.add(student);
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

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Question getQuestionById(String id) {
		Session session = sessionFactory.openSession();
		Question question = new Question();
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery(" from Question where idQuestion = '"+id+"'");
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 question = (Question) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return question;
	}
	}

