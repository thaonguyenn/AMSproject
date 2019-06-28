package org.ams.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Contract;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ContractDAO")
public class ContractDaoImpl implements ContractDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Contract> findAllContract() {
		Session session = sessionFactory.openSession();
		List<Contract> list = new ArrayList<Contract>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List coachs = session.createQuery("FROM Contract").list();
			for (Iterator iterator = coachs.iterator(); iterator.hasNext();) {
				Contract contract = (Contract) iterator.next();
				list.add(contract);
			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}