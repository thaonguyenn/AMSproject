package org.ams.dao;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Request;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("requestDao")
public class RequestDaoImpl extends AbstractDao<String,Request> implements RequestDao{
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Override
	public Request findRequestById(String idRequest) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("idRequest",idRequest));
		return (Request) criteria.uniqueResult();
		
	}

	@Override
	public void sendRequest(Request request) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(request);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}

	@Override
	public List<Request> findAllRequest() {
		Session session = sessionFactory.openSession();
		List<Request> listRequest = new ArrayList<Request>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List requests = session.createQuery("FROM Request").list();
			for (Iterator iterator = requests.iterator(); iterator.hasNext();) {
				Request request = (Request) iterator.next();
				listRequest.add(request);
			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return listRequest;
	}

	@Override
	public long getTotalRequest() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx = session.beginTransaction();
			List requests = session.createQuery("select count (*) FROM Request").list();
			for (Iterator iterator = requests.iterator(); iterator.hasNext();) {
				result = (long) iterator.next();
			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public void createRequest(Request request) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = (Transaction) session.beginTransaction();
			//id tu dong
			Date date = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String day = dateFormat.format(date).replace("-", "");
			long totalRecord = getTotalRequest();
			long nextID = totalRecord + 1;
			String full = fullString(nextID, 5);
			String id = day + "ST" + full;
			System.out.println(id);
			request.setIdRequest(id);
			session.save(request);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}
	private String fullString(long number, int len) {
		String num = number + "";
		while (num.length() < len) {
			num = "0" + num;
		}
		return num;
	}

}