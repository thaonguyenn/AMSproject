package org.ams.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import org.hibernate.Transaction;
import org.ams.model.Request;
import org.ams.model.Student;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("studentDao")
public class StudentDaoImpl extends AbstractDao<String, Student> implements StudentDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void saveStudent(Student student) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = (Transaction) session.beginTransaction();
			// id tu dong
			Date date = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String day = dateFormat.format(date).replace("-", "");
			long totalRecord = getTotalStudent();
			long nextID = totalRecord + 1;
			String full = fullString(nextID, 5);
			String id = day + "ST" + full;
			System.out.println(id);
			student.setIdStudent(id);
			session.save(student);
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
	public long getTotalStudent() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		long result = 0;
		try {
			tx = session.beginTransaction();
			List student = session.createQuery("select count (*) FROM Student").list();
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
	public List<Student> findAllStudents() {
		Session session = sessionFactory.openSession();
		List<Student> list = new ArrayList<Student>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List students = session.createQuery("FROM Student Where status = 4 ").list();
			for (Iterator iterator = students.iterator(); iterator.hasNext();) {
				Student student = (Student) iterator.next();
				list.add(student);
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
	public List<Student> findAllYourStudents() {
		Session session = sessionFactory.openSession();
		List<Student> list = new ArrayList<Student>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List students = session.createQuery("FROM Student").list();
			for (Iterator iterator = students.iterator(); iterator.hasNext();) {
				Student student = (Student) iterator.next();
				list.add(student);
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
	public int getTestedByIdStudent(String idStudent) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		int result = 0;
		try {
			tx = session.beginTransaction();
			List students = session.createQuery("select tested from Student where idStudent = '" + idStudent + "'")
					.list();
			for (Iterator iterator = students.iterator(); iterator.hasNext();) {
				result = (int) iterator.next();
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
	public void updateScoreByIdAccount(String idAccount, int score) {
		Session session = sessionFactory.openSession();
		Query query = session
				.createSQLQuery("update Student set onlineTestScore = :score where idAccount = :idAccount");
		query.setString("idAccount", idAccount);
		query.setInteger("score", score);
		query.executeUpdate();
	}

	@Override
	public void updateTestedByIdAccount(String idAccount) {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("update Student set tested = 1 where idAccount = :idAccount");
		query.setString("idAccount", idAccount);
		query.executeUpdate();
	}

	@Override
	public List<Student> searchStudents(String onl, List<String> language, String TOEFL) {
		StringTokenizer st = new StringTokenizer("-");
		String scoreOne = st.nextToken();
		String scoreTwo = st.nextToken();
		int sc1 = Integer.parseInt(scoreOne);
		int sc2 = Integer.parseInt(scoreTwo);

/* sc1 >= 0 & sc2 <= 200	
 * sc1 > 200 & sc2 <= 400
 * sc1 > 400 & sc2 <= 600
 * sc1 > 600 & sc2 <= 800
 * sc1 > 800 & sc2 <= 1000
*/
		Session session = sessionFactory.openSession();
		List<Student> list = new ArrayList<Student>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List students = session.createQuery(
					"select Student.onlineTestScore PLanguage.nameofLanguage Student.TOEFLscore from Student")
					.list();
			for (Iterator iterator = students.iterator(); iterator.hasNext();) {
				Student student = (Student) iterator.next();
				list.add(student);
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