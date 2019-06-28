package org.ams.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ams.model.Account;
import org.ams.model.Education;
import org.ams.model.PLanguage;
import org.ams.model.Request;
import org.ams.model.Student;
import org.ams.model.Transactions;
import org.ams.service.AccountService;
import org.ams.service.EducationService;
import org.ams.service.PLanguageService;
import org.ams.service.RequestService;
import org.ams.service.StudentService;
import org.ams.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class ControllerStudent {

	@Autowired
	EducationService serviceEducation;
	@Autowired
	PLanguageService serviceLanguage;
	@Autowired
	StudentService serviceStudent;
	@Autowired
	AccountService serviceAccount;
	@Autowired
	RequestService serviceRequest;
	@Autowired
	TransactionService serviceTransaction;

	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String listLanguages(ModelMap model) {
		List<Education> education = serviceEducation.getAll();
		model.addAttribute("educations", education);
		List<PLanguage> language = serviceLanguage.listLanguage();
		model.addAttribute("languages", language);
		return "form-register";
	}

	@RequestMapping(value = { "/createcontract" }, method = RequestMethod.GET)
	public String createContract(ModelMap model) {
		String idRequest = "RE001";
		Request request = serviceRequest.findRequestById(idRequest);
		model.addAttribute("students", request.getStudent());
		model.addAttribute("coachs", request.getCoach());
		return "form-contract";
	}

//	@RequestMapping(value = { "/transaction" }, method = RequestMethod.GET)
//	public String createTransactions(ModelMap model) {
//		String idTransaction = "20190529TR00001";
//		Transactions transaction = serviceTransaction.findTransactionById(idTransaction);
//		model.addAttribute("students", transaction.getStudent());
//		System.out.println(transaction.getStudent().getFullName());
//		model.addAttribute("coachs", transaction.getCoach());
//		System.out.println(transaction.getCoach().getName());
//		return "form-transaction";
//	}

	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public String saveStudent(Student student, ModelMap model, @RequestParam("fullName") String fullName,
			@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("TOEFLscore") String TOEFLscore, @RequestParam("education-id") String education,
			@RequestParam("softskill") String softskill, @RequestParam String[] languages, @RequestParam String date) {
		Education e = new Education();
		e.setId(education);
		student.setFullName(fullName);
		student.setEducation(e);
		Account account = new Account();
		account.setEmail(email);
		account.setPassword(password);
		student.setAccount(account);
		student.setTOEFLscore(TOEFLscore);
		student.setSoftSkill(softskill);
		System.out.println(student);
		Set<PLanguage> languages2 = new HashSet<>();
		for (String string : languages) {
			PLanguage p = new PLanguage();
			p.setIdProLanguage(string);
			languages2.add(p);
		}

		student.setLanguage(languages2);

		String d = date.substring(0, 10);
		String thang = d.substring(0, 2);
		String ngay = d.substring(3, 5);
		String nam = d.substring(6, 10);

		String dbngay = nam + "-" + thang + "-" + ngay;
		student.setDateOfbirth(dbngay);
		System.out.println(student.getDateOfbirth());
		serviceAccount.saveAccount(account);
		serviceStudent.saveStudent(student);

		model.addAttribute("success", "Student " + student.getFullName() + " registered successfully");
		return "success";
	}

	@RequestMapping(value = { "/controller" }, method = RequestMethod.GET)
	public void checkEmail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("email") String email) throws ServletException, IOException {
		// String targetId = request.getParameter("email");
		System.out.println(serviceAccount.checkEmailExist(email));
		if ((email != null) && !serviceAccount.checkEmailExist(email)) {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("<valid>true</valid>");
		} else {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("<valid>false</valid>");
		}
	}

}