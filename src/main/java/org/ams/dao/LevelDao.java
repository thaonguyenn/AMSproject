package org.ams.dao;

import java.util.List;

import org.ams.model.Level;

public interface LevelDao {
	
	List<Level> findAllLevels();

}