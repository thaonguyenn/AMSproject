package org.ams.service;


import java.util.List;

import org.ams.dao.TransactionDao;
import org.ams.model.Transactions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("TransactionService")
@Transactional
public class TransactionServiceImpl implements TransactionService {
	@Autowired
	private TransactionDao dao;

	@Override
	public Transactions findTransactionById(String idTransaction) {
		return dao.findTransactionById(idTransaction);
	}

	@Override
	public List<Transactions> findAllTransaction() {
		return dao.findAllTransaction();
	}

	@Override
	public long getTotalTransaction() {
		return dao.getTotalTransaction();
	}

	@Override
	public List<Transactions> getListByStatus(int status) {
		return dao.getListByStatus(status);
	}

	@Override
	public void updateTrans(int status, String idTrans) {
		dao.updateTrans(status, idTrans);
		
	}

	@Override
	public void createTransactions(Transactions transactions) {
		dao.createTransactions(transactions);
		
	}
	@Override
	public List<Transactions> listStatusStudent(int status, String idStudent) {
		return dao.listStatusStudent(status, idStudent);
	}
}