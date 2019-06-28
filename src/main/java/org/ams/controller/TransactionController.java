package org.ams.controller;

import java.util.List;

import org.ams.model.Transactions;
import org.ams.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TransactionController {
	@Autowired
	TransactionService transactionService;
	@RequestMapping(value = { "/listSendRequest" }, method = RequestMethod.GET)
	public String listAllYourStudent(ModelMap model) {

		List<Transactions> transaction = transactionService.getListByStatus(1);
		model.addAttribute("transactions", transaction);
		model.addAttribute("total", transactionService.getTotalTransaction());
		return "listSendRequest";
	}
	@RequestMapping(value = { "/listSendRequest" }, method = RequestMethod.POST)
	public String approvedProduct(ModelMap model, @RequestParam("transaction") String idTrans ) {
		transactionService.updateTrans(2, idTrans);
		
		List<Transactions> transaction = transactionService.getListByStatus(1);
		model.addAttribute("transaction", transaction);
		return "listSendRequest";
	}
	
	
}