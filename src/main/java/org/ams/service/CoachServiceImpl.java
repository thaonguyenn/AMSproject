package org.ams.service;

import java.util.List;

import org.ams.dao.CoachDao;
import org.ams.model.Coach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("CoachService")
@Transactional
public class CoachServiceImpl implements CoachService {
	@Autowired
	private CoachDao dao;

	@Override
	public Coach findById(String id) {
		return dao.findById(id);
	}

	@Override
	public void saveCoach(Coach coach) {
		dao.saveCoach(coach);

	}

	@Override
	public List<Coach> findAllCoachs() {
		return dao.findAllCoachs();
	}

	@Override
	public Coach findCoachById(String idCoach) {
		return dao.findCoachById(idCoach);
	}

	@Override
	public long getTotalCoach() {
		return dao.getTotalCoach();
	}

	@Override
	public boolean checkEmailExist(String email) {
		return dao.checkEmailExist(email);
	}

	@Override
	public void deleteEmployeeByEmail(String idCoach) {
		dao.deleteEmployeeByEmail(idCoach);

	}

	@Override
	public boolean isCoachEmailUnique(String emailOfCoach) {
		Coach coach = findCoachById(emailOfCoach);
		return (coach == null || ((emailOfCoach != null) && (coach.getEmailOfCoach() == emailOfCoach)));

	}

	@Override
	public void updateCoach(Coach coach) {
		Coach entity = dao.findCoachById(coach.getIdCoach());
		if (entity != null) {
			entity.setName(coach.getName());
			entity.setDepartment(coach.getDepartment());
			entity.setTelephone(coach.getTelephone());

		}

	}

}