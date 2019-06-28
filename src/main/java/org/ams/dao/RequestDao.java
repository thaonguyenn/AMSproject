package org.ams.dao;


import java.util.List;

import org.ams.model.Request;



public interface RequestDao {
	public Request findRequestById(String idRequest);
	void sendRequest(Request request);
	List<Request> findAllRequest();
	long getTotalRequest();
	void createRequest(Request request);
}