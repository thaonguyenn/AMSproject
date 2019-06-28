package org.ams.dao;

import java.util.List;

import org.ams.model.Coach;

public interface CoachDao {
	Coach findById(String id);

	void saveCoach(Coach coach);

	List<Coach> findAllCoachs();

	boolean checkEmailExist(String email);

	void deleteEmployeeByEmail(String emailOfCoach);

	Coach findCoachById(String emailOfCoach);

	long getTotalCoach();
	
//	void updateProfileCoach();
}