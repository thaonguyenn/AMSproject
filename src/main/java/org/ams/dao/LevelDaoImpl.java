//package org.ams.dao;
//
//import java.util.List;
//
//import org.ams.model.Level;
//import org.hibernate.Criteria;
//import org.springframework.stereotype.Repository;
//
//@Repository("levelDao")
//public class LevelDaoImpl extends AbstractDao<String, Level> implements LevelDao {
//
//	@SuppressWarnings("unchecked")
//	public List<Level> findAllLevels() {
//		Criteria criteria = createEntityCriteria();
//		System.out.println(criteria.list().size());
//		return (List<Level>) criteria.list();
//	}
//}