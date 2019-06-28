package org.ams.controller;

import java.util.List;

import org.ams.model.Contract;
import org.ams.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContractController {
	@Autowired
	ContractService serviceContract;
	@RequestMapping(value = { "/historycontract" }, method = RequestMethod.GET)
	public String historyContract(ModelMap model){
		List<Contract> contract = serviceContract.findAllContract();
		model.addAttribute("listContract",contract);
		return "historyContract";
		
	}

}