package org.ams.dao;

import java.util.List;

import org.ams.model.Contract;
public interface ContractDao {
	List<Contract> findAllContract();
}