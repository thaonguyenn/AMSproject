package org.ams.service;

import java.util.List;

import org.ams.model.Contract;

public interface ContractService {
	List<Contract> findAllContract();
}