package org.ams.service;

import java.util.List;

import org.ams.dao.EducationDao;
import org.ams.model.Education;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("educationService")
@Transactional
public class EducationServiceImpl implements EducationService{
	@Autowired
	EducationDao dao;
	@Override
	public List<Education> getAll() {
		return dao.getAll();
	}

}