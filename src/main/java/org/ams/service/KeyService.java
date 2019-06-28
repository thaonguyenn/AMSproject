package org.ams.service;

import java.util.List;

import org.ams.model.Question;

public interface KeyService {
	List<String> getListKeyByListIdQuestions(List<String> ids);
}
