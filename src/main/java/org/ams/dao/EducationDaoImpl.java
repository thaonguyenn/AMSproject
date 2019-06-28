package org.ams.dao;

import java.util.List;

import org.ams.model.Education;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;


@Repository("educationDao")
public class EducationDaoImpl extends AbstractDao<String,Education> implements EducationDao {
	@SuppressWarnings("unchecked")
	@Override
	public List<Education> getAll() {
		Criteria criteria = createEntityCriteria();
		return (List<Education>) criteria.list();
	}

}