package org.ams.dao;

import java.util.List;
import org.ams.model.PLanguage;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

@Repository("planguageDao")
public class PLanguageDaoImpl extends AbstractDao<String,PLanguage> implements PLanguageDao {
	@SuppressWarnings("unchecked")
	public List<PLanguage> listLanguage() {
		Criteria criteria = createEntityCriteria();
		return (List<PLanguage>) criteria.list();
	}
	

}