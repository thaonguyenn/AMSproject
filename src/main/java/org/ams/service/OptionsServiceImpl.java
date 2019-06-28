package org.ams.service;

import org.ams.dao.OptionsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("optionsService")
@Transactional
public class OptionsServiceImpl implements OptionsService{
	@Autowired
	private OptionsDao optionsDao;

	@Override
	public String getIdOptionByAnswer(String answer) {
		return optionsDao.getIdOptionByAnswer(answer);
	}

}
