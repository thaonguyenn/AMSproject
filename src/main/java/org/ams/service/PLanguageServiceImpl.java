package org.ams.service;

import java.util.List;

import org.ams.dao.PLanguageDao;
import org.ams.model.PLanguage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("planguageService")
@Transactional
public class PLanguageServiceImpl implements PLanguageService {
	@Autowired
	private PLanguageDao dao;
	public List<PLanguage> listLanguage() {
		return dao.listLanguage();
	}

}