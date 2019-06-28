package org.ams.dao;

import java.util.List;

import org.ams.model.Question;

public interface QuestionDao {

	List<Question> findQuestionByTypeAndLevel(int amount, String type, String level);
	Question getQuestionById(String id);
}
