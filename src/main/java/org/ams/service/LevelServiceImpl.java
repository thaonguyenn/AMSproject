//package org.ams.service;
//
//import java.util.List;
//
//import org.ams.dao.LevelDao;
//import org.ams.model.Level;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//
//@Service("levelService")
//@Transactional
//public class LevelServiceImpl implements LevelService{
//	
//	@Autowired
//	private LevelDao levelDao;
//
//	@Override
//	public List<Level> findAllLevels() {
//		return levelDao.findAllLevels();
//	}
//
//	public LevelDao getLevelDao() {
//		return levelDao;
//	}
//
//	public void setLevelDao(LevelDao levelDao) {
//		this.levelDao = levelDao;
//	}
//}
