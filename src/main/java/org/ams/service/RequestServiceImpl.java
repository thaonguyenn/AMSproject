package org.ams.service;


import java.util.List;

import org.ams.dao.RequestDao;
import org.ams.model.Request;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("requestService")
@Transactional
public class RequestServiceImpl implements RequestService {
	
	@Autowired
	private RequestDao dao;
	
	@Override
	public Request findRequestById(String idRequest) {
		return dao.findRequestById(idRequest);
	}
	@Override
	public void sendRequest(Request request) {
		dao.sendRequest(request);
	
		
	}
	@Override
	public List<Request> findAllRequest() {
		return dao.findAllRequest();
	}
	@Override
	public long getTotalRequest() {
		return dao.getTotalRequest();
	}
	@Override
	public void createRequest(Request request) {
		dao.createRequest(request);
		
	}

}