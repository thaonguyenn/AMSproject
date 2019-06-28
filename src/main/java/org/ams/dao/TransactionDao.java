package org.ams.dao;

import java.util.List;


import org.ams.model.Transactions;

public interface TransactionDao {
	public Transactions findTransactionById(String idTransaction);
	List<Transactions> findAllTransaction();
	long getTotalTransaction();
	List<Transactions> getListByStatus(int status);
	public void updateTrans(int status,String idTrans);
	void createTransactions(Transactions transactions);
	List<Transactions> listStatusStudent(int status,String idStudent);

}