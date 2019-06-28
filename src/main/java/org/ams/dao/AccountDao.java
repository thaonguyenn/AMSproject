package org.ams.dao;

import org.ams.model.Account;

public interface AccountDao {
	void saveAccount(Account account);
	public long getTotalAccount();
	public boolean checkEmailExist(String email);
	public boolean isValidAccount(String email, String password);
	String getIdByEmail(String emailOfStudent,String password);
	public Account getAccountByEmail(String email);

}