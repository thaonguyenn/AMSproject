package org.ams.service;

import org.ams.dao.AccountDao;
import org.ams.dao.EducationDao;
import org.ams.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("accountService")
@Transactional
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountDao dao;
	@Override
	public void saveAccount(Account account) {
		dao.saveAccount(account);
	}
	@Override
	public boolean checkEmailExist(String email) {
		return dao.checkEmailExist(email);
	}
	@Override
	public boolean isValidAccount(String email, String password) {
		return dao.isValidAccount(email, password);
	}
	@Override
	public String getIdByEmail(String emailOfStudent, String password) {
		return dao.getIdByEmail(emailOfStudent, password);
	}
	@Override
	public Account getAccountByEmail(String email) {
		return dao.getAccountByEmail(email);
	}
	}
	
