package org.ams.service;

import java.util.List;

import org.ams.dao.QuestionDao;
import org.ams.model.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("questionService")
@Transactional
public class QuestionServiceImpl implements QuestionService{

	public QuestionDao getQuestionDao() {
		return questionDao;
	}
	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}
	@Autowired
	private QuestionDao questionDao;
	@Override
	public List<Question> findQuestionByTypeAndLevel(int amount, String type, String level) {
		return questionDao.findQuestionByTypeAndLevel(amount, type, level);
	}
	@Override
	public Question getQuestionById(String id) {
		return questionDao.getQuestionById(id);
	}

}
