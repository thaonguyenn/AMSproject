package org.ams.dao;

import java.util.List;

import org.ams.model.Sessions;

public interface SessionDao {
	void createSession(String id, String idQ);
	long getCurrentPosition();
	Sessions getSessionByPosition(int position);
	void saveAnswer(Sessions session, String answer);
	List<Sessions> getListSessionByPosition (int position);
	List<String> getListIdSessionByIdAccount(String idAccount);
	List<String> getAllIdSession();
}
