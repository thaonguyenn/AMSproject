package org.ams.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.ams.model.Account;
import org.ams.service.AccountService;
import org.ams.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	@Autowired
	StudentService serviceStudent;

	
	@Autowired
	AccountService accountService;
	
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String login(ModelMap model){
		Account student = new Account();
		model.addAttribute("student",student);
		return "Login";
	}
	@RequestMapping(value = { "/" }, method = RequestMethod.POST)
	public String loginValid(Account student, HttpServletRequest request, ModelMap model){
		boolean checkValid = accountService.isValidAccount(student.getEmail(), student.getPassword());
		if(checkValid) {
			HttpSession session = request.getSession(true);
			student.setIdAccount(accountService.getIdByEmail(student.getEmail(), student.getPassword()));
			session.setAttribute("student",student);
			 return "redirect:selectCoach";
		}
		return "Login";
	}
}
