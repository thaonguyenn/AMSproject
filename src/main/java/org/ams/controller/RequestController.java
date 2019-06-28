package org.ams.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.ams.model.Request;
import org.ams.model.Transactions;
import org.ams.service.RequestService;
import org.ams.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RequestController {
	@Autowired
	RequestService requestService;
	@Autowired
	TransactionService transactionService;
	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = { "/listAllRequest" }, method = RequestMethod.GET)
	public String listAllRequest(ModelMap model) {

		List<Request> request = requestService.findAllRequest();
		model.addAttribute("requests", request);

		System.out.println("ssss");
		return "requestManagement";
	}
	@RequestMapping(value = { "/CreateContract" }, method = RequestMethod.GET)
	public String CreateContract(ModelMap model,@RequestParam ("idRequest") String idRequest) {
		Request request =requestService.findRequestById(idRequest);
		model.addAttribute("students",request.getStudent());
		System.out.println(request.getStudent().getFullName());
		model.addAttribute("coachs",request.getCoach());
		System.out.println(request.getCoach().getName());
		model.addAttribute("request",request);
//		return "sendRequestSuccess";
		return "createContract";
	}


	@RequestMapping(value = { "/sendContract" }, method = RequestMethod.POST)
	public String createRequest(ModelMap model, @RequestParam("transaction") String transaction) {
		Transactions tran =transactionService.findTransactionById(transaction);
		model.addAttribute("students",tran.getStudent());
		model.addAttribute("coachs",tran.getCoach());
		Request request = new Request();
		request.setCoach(tran.getCoach());
		request.setStudent(tran.getStudent());
	
		
		request.setContents(new Date() + "");
		request.setTypeOfRequest("Create Contract");
		requestService.createRequest(request);
		
		transactionService.updateTrans(2, transaction);
		List<Transactions> list = transactionService.getListByStatus(1);
		model.addAttribute("transactions", list);

		return "listSendRequest";
	}
	@RequestMapping(value = { "/sendCertificate" }, method = RequestMethod.GET)
	public String sendCretificate(ModelMap model) {

		
		return "listSendRequest";
	}

}