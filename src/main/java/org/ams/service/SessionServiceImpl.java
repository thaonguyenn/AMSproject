package org.ams.service;

import java.util.List;

import org.ams.dao.SessionDao;
import org.ams.model.Sessions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("sessionService")
@Transactional
public class SessionServiceImpl implements SessionService{

	@Autowired
	private SessionDao sessionDao;
	@Override
	public void createSession(String id, String idQ) {
		sessionDao.createSession(id, idQ);
	}
	@Override
	public long getCurrentPosition() {
		return sessionDao.getCurrentPosition();
	}
	@Override
	public Sessions getSessionByPosition(int position) {
		return sessionDao.getSessionByPosition(position);
	}
	@Override
	public void saveAnswer(Sessions session, String answer) {
		sessionDao.saveAnswer(session, answer);
	}
	@Override
	public List<Sessions> getListSessionByPosition(int position) {
		return sessionDao.getListSessionByPosition(position);
	}
	@Override
	public List<String> getListIdSessionByIdAccount(String idAccount) {
		return sessionDao.getListIdSessionByIdAccount(idAccount);
	}
	@Override
	public List<String> getAllIdSession() {
		return sessionDao.getAllIdSession();
	}
	
}
