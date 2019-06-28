package org.ams.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.ams.model.Account;
import org.ams.model.Coach;
import org.ams.model.Student;
import org.ams.model.Transactions;
import org.ams.service.CoachService;
import org.ams.service.StudentService;
import org.ams.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("student")
@RequestMapping("/")
public class CoachController {
	@Autowired
	CoachService service;
	@Autowired
	StudentService serviceStudent;
	@Autowired
	TransactionService serviceTransaction;
	@Autowired
	MessageSource messageSource;

	/*
	 * This method will list all existing employees.
	 */
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listCoach(ModelMap model) {

		List<Coach> coach = service.findAllCoachs();
		System.out.println(coach.size());
		model.addAttribute("coachs", coach);
		model.addAttribute("total", service.getTotalCoach());
		return "coach-list";

	}

	/*
	 * This method will provide the medium to add a new employee.
	 */
	@RequestMapping(value = { "/createCoach" }, method = RequestMethod.GET)
	public String newCoach(ModelMap model) {
		Coach coach = new Coach();
		model.addAttribute("coach", coach);
		model.addAttribute("edit", false);
		return "newCoach";
	}

	@RequestMapping(value = { "/createCoach" }, method = RequestMethod.POST)
	public String saveCoach(Coach coach, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "newCoach";
		}

		if (!service.isCoachEmailUnique(coach.getEmailOfCoach())) {
			System.out.println("Co chay k ? ");
			FieldError emailError = new FieldError("coach", "emailOfCoach", messageSource.getMessage(
					"unique.coach.emailOfCoach", new String[] { coach.getEmailOfCoach() }, Locale.getDefault()));
			result.addError(emailError);
			return "newCoach";
		}

		service.saveCoach(coach);

		model.addAttribute("success", "Chào mừng bạn " + coach.getName() + " .Bạn có thể đăng nhập với tên: "
				+ coach.getEmailOfCoach() + " và mật khẩu là: " + coach.getPassword() + " Cảm ơn bạn đã đăng ký");
		return "success";
	}

	@RequestMapping(value = { "/controller" }, method = RequestMethod.GET)
	public void checkEmail(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("email") String email) throws ServletException, IOException {
		// String targetId = request.getParameter("email");
		System.out.println(service.checkEmailExist(email));
		if ((email != null) && !service.checkEmailExist(email)) {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("<valid>true</valid>");
		} else {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("<valid>false</valid>");
		}
	}

	@RequestMapping(value = { "/delete-{idCoach}-coach" }, method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable String idCoach) {
		service.deleteEmployeeByEmail(idCoach);
		return "redirect:/list";
	}

	@RequestMapping(value = { "/detail-{idCoach}-coach" }, method = RequestMethod.GET)
	public String getDetailStudent(@PathVariable String idCoach, ModelMap model) {
		Coach coach = service.findCoachById(idCoach);
		model.addAttribute("coach", coach);
		return "coach-detail";
	}

	@RequestMapping(value = { "/edit-{idCoach}-coach" }, method = RequestMethod.GET)
	public String editCoach(@PathVariable String idCoach, ModelMap model) {
		Coach coach = service.findCoachById(idCoach);
		model.addAttribute("coach", coach);
		model.addAttribute("edit", true);
		return "newCoach";
	}

	@RequestMapping(value = { "/edit-{idCoach}-coach" }, method = RequestMethod.POST)
	public String updateEmployee(@Valid Coach coach, BindingResult result, ModelMap model, @PathVariable String ssn) {

		if (result.hasErrors()) {
			return "registration";
		}

		service.updateCoach(coach);

		model.addAttribute("success", "Coach " + coach.getName() + " updated successfully");
		return "success";
	}

	@RequestMapping(value = { "/selectCoach" }, method = RequestMethod.GET)
	public String selectCoach(ModelMap model, @ModelAttribute(value = "student") Account student) {
		List<Coach> coach = service.findAllCoachs();
		System.out.println(coach.size());
		model.addAttribute("coachs", coach);
		if (student != null) {
			int tmp = serviceStudent.getTestedByIdStudent(student.getIdAccount());
			if (tmp == 0) {
				model.addAttribute("tested", false);
			} else if (tmp == 1) {
				model.addAttribute("tested", true);
			}

			/*
			 * int tmp = getTestedByIdStudent(String id); if tmp == 0
			 * model.addAttribute("tested", false); else model.addAttribute("tested", true);
			 */
			model.addAttribute("student", student);
		}

		return "selectCoach";
	}

//	@RequestMapping(value = { "/createTransactions" }, method = RequestMethod.GET)
//	public void createTransaction(ModelMap model, @RequestParam("idCoach") String idCoach,
//			@ModelAttribute(value = "student") Account student) {
//		Transactions transactions = serviceTransaction.findTransactionById(idCoach);
////		transactions.setIdCoach(idCoach);
////		transactions.setIdStudent(student.getIdAccount());
//		System.out.println(student.getIdAccount());
//		transactions.setDateTrans(new Date());
//		serviceTransaction.createTransactions(transactions);
//		
//
//		
//		
//	}
}

/*
 * request mapping : /createTransaction get idCoach and idStudent for method :
 * void createTransaction(idCoach,idStudent)
 */