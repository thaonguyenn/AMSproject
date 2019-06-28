package org.ams.service;

import org.ams.model.Account;

public interface AccountService {
	void saveAccount(Account account);
	public boolean checkEmailExist(String email);
	public boolean isValidAccount(String email, String password);
	String getIdByEmail(String emailOfStudent,String password);
	public Account getAccountByEmail(String email);
}