package org.ams.dao;

import java.util.List;

import org.ams.model.Request;
import org.ams.model.Student;

public interface StudentDao {
	void saveStudent(Student student);
	public long getTotalStudent();
	List<Student> findAllStudents();
	void sendRequest(Request request);
	List<Student> findAllYourStudents();
	int getTestedByIdStudent(String idStudent);//Hong
	void updateScoreByIdAccount(String idAccount, int score);
	void updateTestedByIdAccount(String idAccount);
	List<Student> searchStudents (String onl, List<String> language, String TOEFL);
	
}