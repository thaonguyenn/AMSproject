package org.ams.service;

import java.util.List;

import org.ams.model.Request;
import org.ams.model.Student;

public interface StudentService {
	void saveStudent(Student student);
	List<Student> findAllStudents();
	long getTotalStudent();
	List<Student> findAllYourStudents();
	void sendRequest(Request request);
	int getTestedByIdStudent(String idStudent);//Hong
	void updateScoreByIdAccount(String idAccount, int score);
	void updateTestedByIdAccount(String idAccount);
//	List<Student> searchStudents (String onl, List<String> language, String TOEFL);

}