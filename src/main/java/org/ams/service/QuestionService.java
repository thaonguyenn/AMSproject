package org.ams.service;

import java.util.List;

import org.ams.model.Question;

public interface QuestionService {
	List<Question> findQuestionByTypeAndLevel(int amount, String type, String level);
	Question getQuestionById(String id);
}
