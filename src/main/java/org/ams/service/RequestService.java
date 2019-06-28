package org.ams.service;

import java.util.List;

import org.ams.model.Request;

public interface RequestService {
	public Request findRequestById(String idRequest);
	void sendRequest(Request request);
	List<Request> findAllRequest();
	long getTotalRequest();
	void createRequest(Request request);
}