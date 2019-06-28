package org.ams.service;

import java.util.List;

import org.ams.dao.ContractDao;
import org.ams.model.Contract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("contractService")
@Transactional
public class ContractServiceImpl implements ContractService{
	@Autowired
	ContractDao dao;
	@Override
	public List<Contract> findAllContract() {
		return dao.findAllContract();
	}

}