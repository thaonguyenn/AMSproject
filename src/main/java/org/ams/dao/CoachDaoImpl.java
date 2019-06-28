package org.ams.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.ams.model.Coach;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("CoachDAO")
public class CoachDaoImpl extends AbstractDao<Integer, Coach> implements CoachDao {
	Random rd = new Random();
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Coach findById(String idCoach) {
		return null;
	}

	@Override
	public void saveCoach(Coach coach) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			//id tu dong
			Date date = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String day = dateFormat.format(date).replace("-", "");
			long totalRecord = getTotalCoach();
			long nextID = totalRecord + 1;
			String full = fullString(nextID, 5);
			String id = day + "CO" + full;
			System.out.println(id);
			coach.setIdCoach(id);
			session.save(coach);
			
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
	public List<Coach> findAllCoachs() {
		Session session = sessionFactory.openSession();
		List<Coach> list = new ArrayList<Coach>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List coachs = session.createQuery("FROM Coach").list();
			for (Iterator iterator = coachs.iterator(); iterator.hasNext();) {
				Coach coach = (Coach) iterator.next();
				list.add(coach);
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

	public Coach findCoachById(String idCoach) {
		System.out.println("hooooooooo");
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("idCoach", idCoach));
		return (Coach) criteria.uniqueResult();
	}

	@Override
	public long getTotalCoach() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx = session.beginTransaction();
			List coachs = session.createQuery("select count (*) FROM Coach").list();
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

	@SuppressWarnings("unused")
	@Override
	public boolean checkEmailExist(String email) {
		System.out.println("asdfgh");
		Session session = sessionFactory.openSession();
		List<String> list = new ArrayList<String>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List lists = session.createQuery("select emailOfCoach from Coach").list();
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
	public void deleteEmployeeByEmail(String idCoach) {
		Query query = getSession().createSQLQuery("delete from Coach where idCoach = :idCoach");
		query.setString("idCoach", idCoach);
		query.executeUpdate();
	}
	public ArrayList<String> generateListID(){
		ArrayList<String> ids = new ArrayList<String>();
		for (int i = 0; i < 25; i++) {
			String id = generateID();
			while(ids.contains(id)) {
				id = generateID();
			}
			ids.add(id);
		}
		return ids;
	}

	
		public String generateID() {
			String subID = "";
			for (int i = 0; i < 8; i++) {
				subID += rd.nextInt(9);
			}
			return subID;
		
	}

		/*@Override
		public void updateProfileCoach() {
			Session session = sessionFactory.openSession();
			Query query = session.createSQLQuery("");
			query.setString("",);
			query.executeUpdate();
			
		}*/

}