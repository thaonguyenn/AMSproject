package org.ams.service;

import java.util.List;

import org.ams.dao.StudentDao;
import org.ams.model.Request;
import org.ams.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDao dao;
	@Override
	public void saveStudent(Student student) {
		dao.saveStudent(student);
		
	}
	@Override
	public List<Student> findAllStudents() {
		return dao.findAllStudents();
	}
	@Override
	public long getTotalStudent() {
		return dao.getTotalStudent();
	}
	@Override
	public List<Student> findAllYourStudents() {
		return dao.findAllYourStudents();
	}
	@Override
	public void sendRequest(Request request) {
		dao.sendRequest(request);
		
	}
	@Override
	public int getTestedByIdStudent(String idStudent) {
		return dao.getTestedByIdStudent(idStudent);
	}
	@Override
	public void updateScoreByIdAccount(String idAccount, int score) {
		dao.updateScoreByIdAccount(idAccount, score);
	}
	@Override
	public void updateTestedByIdAccount(String idAccount) {
		dao.updateTestedByIdAccount(idAccount);
	}
/*	@Override
	public List<Student> searchStudents(String onl, List<String> language, String TOEFL) {
		return dao.searchStudents(onl, language, TOEFL);
	}*/
	

}