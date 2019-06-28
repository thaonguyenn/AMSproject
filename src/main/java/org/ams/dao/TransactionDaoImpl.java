package org.ams.dao;




import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Transactions;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("TransactionDAO")
public class TransactionDaoImpl extends AbstractDao<String,Transactions> implements TransactionDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Transactions findTransactionById(String idTransaction) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("idTrans",idTransaction));
		return (Transactions) criteria.uniqueResult();
	}

	@Override
	public List<Transactions> findAllTransaction() {
		Session session = sessionFactory.openSession();
		List<Transactions> listTransaction = new ArrayList<Transactions>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List transactions = session.createQuery("FROM Transactions").list();
			for (Iterator iterator = transactions.iterator(); iterator.hasNext();) {
				Transactions transaction = (Transactions)iterator.next();
				listTransaction.add(transaction);
			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return listTransaction;
	}

	@Override
	public long getTotalTransaction() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx = session.beginTransaction();
			List transaction = session.createQuery("select count (*) FROM Transactions").list();
			for (Iterator iterator = transaction.iterator(); iterator.hasNext();) {
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
	public List<Transactions> getListByStatus(int status) {
		Session session = sessionFactory.openSession();
		List<Transactions> list = new ArrayList<Transactions>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List transaction = session.createQuery("FROM Transactions where status = " + status).list();
			for (Iterator iterator = transaction.iterator(); iterator.hasNext();) {
				Transactions trans = (Transactions) iterator.next();
				list.add(trans);
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

	@Override
	public void updateTrans(int status, String idTrans) {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("UPDATE Transactions SET status =" + status + " WHERE idTrans = '" + idTrans + "'");
		query.executeUpdate();
		
	}

	@Override
	public void createTransactions(Transactions transactions) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			//id tu dong
			Date date = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String day = dateFormat.format(date).replace("-", "");
			long totalRecord = getTotalTrans();
			long nextID = totalRecord + 1;
			String full = fullString(nextID, 5);
			String id = day + "TR" + full;
			System.out.println(id);
			transactions.setIdTrans(id);
			session.save(transactions);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}
	public long getTotalTrans() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx = session.beginTransaction();
			List coachs = session.createQuery("select count (*) FROM Transactions").list();
			for (Iterator iterator = coachs.iterator(); iterator.hasNext();) {
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

	

	private String fullString(long number, int len) {
		String num = number + "";
		while (num.length() < len) {
			num = "0" + num;
		}
		return num;
	
		
	}
	
	@Override
	public List<Transactions> listStatusStudent(int status, String idStudent) {
		Session session = sessionFactory.openSession();
		List<Transactions> list = new ArrayList<Transactions>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List coachs = session.createQuery("from Transactions where status = "+status+" and student.idStudent = '"+idStudent+"'").list();
			
			for (Iterator iterator = coachs.iterator(); iterator.hasNext();) {
				Transactions transaction = (Transactions) iterator.next();
				list.add(transaction);
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