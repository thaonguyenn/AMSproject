package org.ams.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.ams.model.Account;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("accountDao")
public class AccountDaoImpl extends AbstractDao<String,Account> implements AccountDao  {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void saveAccount(Account account) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = (Transaction) session.beginTransaction();
			//id tu dong
			Date date = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String day = dateFormat.format(date).replace("-", "");
			long totalRecord = getTotalAccount();
			long nextID = totalRecord + 1;
			String full = fullString(nextID, 5);
			String id = day + "AC" + full;
			System.out.println(id);
			account.setIdAccount(id);
			session.save(account);
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
	@Override
	public long getTotalAccount() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx =  session.beginTransaction();
			List student = session.createQuery("select count (*) FROM Account").list();
			for (Iterator iterator = student.iterator(); iterator.hasNext();) {
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
	public boolean checkEmailExist(String email) {
		System.out.println("asdfgh");
		Session session = sessionFactory.openSession();
		List<String> list = new ArrayList<String>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List lists = session.createQuery("select email from Account").list();
			for (Iterator iterator = lists.iterator(); iterator.hasNext();) {
				String strings = (String) iterator.next();
				list.add(strings);

			}
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).equals(email)) {
					return true;
				}
			}

			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return false;
	}

	@Override
	public boolean isValidAccount(String email, String password) {
		
			Session session = sessionFactory.openSession();
			long i = 0;
			 Transaction tx = null;
		      try {
		         tx = session.beginTransaction();
		        
				Query q = session.createQuery("select count(*) from Account where email = '"+email+"' and password = '"+password+"'");
		         @SuppressWarnings("rawtypes")
		         List qu = q.list();
		         for (@SuppressWarnings("rawtypes")
				Iterator iterator = qu.iterator(); iterator.hasNext();){
		        	 i = (long) iterator.next();
		         }
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
			if (i > 0)
			return true;
			else
				return false;
	}

	@Override
	public String getIdByEmail(String email, String password) {
		Session session = sessionFactory.openSession();
		String id = "";
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("select idAccount from Account where email = '" +email+ "' and password = '"+password+"'" );
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

	@Override
	public Account getAccountByEmail(String email) {
		Session session = sessionFactory.openSession();
		Account ac = null;
		 Transaction tx = null;
	      try {
	         tx = session.beginTransaction();
	        
			Query q = session.createQuery("from Account where email = '" +email+ "'" );
	         @SuppressWarnings("rawtypes")
	         List qu = q.list();
	         for (@SuppressWarnings("rawtypes")
			Iterator iterator = qu.iterator(); iterator.hasNext();){
	        	 ac = (Account) iterator.next();
	         }
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		return ac;
	}
	}
