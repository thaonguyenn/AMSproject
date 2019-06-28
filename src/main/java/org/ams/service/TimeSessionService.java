package org.ams.service;

import java.util.Date;
import java.util.List;

public interface TimeSessionService {
	void createTimeSession(String id, Date timeStart, Date timeEnd);
	Date getTimeEndByIdSession(String id);
	List<String> getQuestionsByIdSession(String idSession);
	List<String> getAnswersByIdSession(String idSession);
	String getIdByUserIfAvailable (String idUser);
}
