package org.ams.dao;

import java.util.List;

public interface KeyDao {
	List<String> getListKeyByListIdQuestions(List<String> ids);
}
