package org.ams.service;

import java.util.List;

import org.ams.model.Coach;

public interface CoachService {
	Coach findById(String id);

	void saveCoach(Coach coach);

	List<Coach> findAllCoachs();

	Coach findCoachById(String idCoach);

	long getTotalCoach();
	
	void updateCoach(Coach coach);

	boolean checkEmailExist(String email);

	void deleteEmployeeByEmail(String idCoach);

	boolean isCoachEmailUnique(String emailOfCoach);
}