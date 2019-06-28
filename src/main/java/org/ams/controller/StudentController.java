package org.ams.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.ams.model.Coach;
import org.ams.model.Request;
import org.ams.model.Student;
import org.ams.model.Transactions;
import org.ams.service.CoachService;
import org.ams.service.StudentService;
import org.ams.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {
	@Autowired
	StudentService studentService;
	@Autowired
	TransactionService transactionService;
	@RequestMapping(value = { "/listAllStudent" }, method = RequestMethod.GET)
	public String listAllStudent(ModelMap model, HttpServletRequest request) {

		List<Student> student = studentService.findAllYourStudents();
		List<List<Transactions>> listCoachApprove = new ArrayList<List<Transactions>>();
		List<List<Transactions>> listCoachReject = new ArrayList<List<Transactions>>();
		for (Student student2 : student) {
			List<Transactions> coachA = transactionService.listStatusStudent(2,student2.getIdStudent());
			listCoachApprove.add(coachA);
			List<Transactions> coachR = transactionService.listStatusStudent(3,student2.getIdStudent());
			listCoachReject.add(coachR);

		}	
		model.addAttribute("students", student);
		model.addAttribute("listCoachApprove", listCoachApprove);
		model.addAttribute("listCoachReject", listCoachReject);
		model.addAttribute("total", studentService.getTotalStudent());
		return "inforStudent";
	}
	
	@RequestMapping(value = { "/createContract" }, method = RequestMethod.GET)
	public String createContract(ModelMap model) {

		
		return "createContract";
	}
	@RequestMapping(value = { "/listAllYourStudent" }, method = RequestMethod.GET)
	public String listAllYourStudent(ModelMap model) {

		List<Student> student = studentService.findAllYourStudents();
		model.addAttribute("students", student);
		model.addAttribute("total", studentService.getTotalStudent());
		return "listAllYourStudent";
	}
	@RequestMapping(value = { "/request" }, method = RequestMethod.POST)
	public String sendRequest(Request request, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "sendRequest";
		
		}
			
		studentService.sendRequest(request);

		model.addAttribute("success", "Báº¡n Ä‘Ã£ gá»­i yÃªu cáº§u" +"vá»›i tÃªn Huáº¥n luyá»‡n viÃªn :"
				+ request.getCoach().getName()+ " vÃ  tÃªn Há»�c viÃªn lÃ : " + request.getStudent().getFullName() + " Cáº£m Æ¡n báº¡n Ä‘Ã£ gá»­i yÃªu cáº§u");
		return "sendRequestSuccess";
	}
	
}
