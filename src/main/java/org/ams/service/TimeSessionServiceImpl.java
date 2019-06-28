package org.ams.service;

import java.util.Date;
import java.util.List;

import org.ams.dao.TimeSessionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("timeSessionService")
@Transactional
public class TimeSessionServiceImpl implements TimeSessionService{

	@Autowired
	private TimeSessionDao timeSessionDao;
	@Override
	public void createTimeSession(String id, Date timeStart, Date timeEnd) {
		timeSessionDao.createTimeSession(id, timeStart, timeEnd);;
	}
	@Override
	public Date getTimeEndByIdSession(String id) {
		return timeSessionDao.getTimeEndByIdSession(id);
	}
	@Override
	public List<String> getQuestionsByIdSession(String idSession) {
		return timeSessionDao.getQuestionsByIdSession(idSession);
	}
	@Override
	public List<String> getAnswersByIdSession(String idSession) {
		return timeSessionDao.getAnswersByIdSession(idSession);
	}
	@Override
	public String getIdByUserIfAvailable(String idUser) {
		return timeSessionDao.getIdByUserIfAvailable(idUser);
	}
	
}
