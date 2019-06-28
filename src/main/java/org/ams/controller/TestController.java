package org.ams.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ams.model.Question;
import org.ams.model.Sessions;
import org.ams.service.KeyService;
import org.ams.service.OptionsService;
import org.ams.service.QuestionService;
import org.ams.service.SessionService;
import org.ams.service.StudentService;
import org.ams.service.TimeSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {
	// ---- get session id ----

	String user = "20160524AC00005";

	int numberOfQuestionPerPage = 5;
	@Autowired
	QuestionService questionService;
	@Autowired
	KeyService keyService;
	@Autowired
	TimeSessionService timeSessionService;
	@Autowired
	SessionService sessionService;
	@Autowired
	OptionsService optionService;
	@Autowired
	StudentService studentService;

	@RequestMapping(value = { "/feedback" }, method = RequestMethod.GET)
	public String feedback(ModelMap model) {
		List<String> idSessions = sessionService.getListIdSessionByIdAccount(user);
		List<String> idQuestions = timeSessionService.getQuestionsByIdSession(idSessions.get(0));
		List<String> answers = timeSessionService.getAnswersByIdSession(idSessions.get(0));
		List<String> keys = keyService.getListKeyByListIdQuestions(idQuestions);
		// can get from student
		int score = 0;
		int totalCorrect = 0;
		for (int i = 0; i < keys.size(); i++) {
			if (answers.get(i) != null) {
			if (answers.get(i).equals(keys.get(i))) {
				totalCorrect += 1;
				score += 5;
			}
			}
		}
		List<Question> questions = new ArrayList<Question>();
		for (String idQ : idQuestions) {
			questions.add(questionService.getQuestionById(idQ));
		}
		model.addAttribute("score", score);
		model.addAttribute("totalCorrect", totalCorrect);
		model.addAttribute("questions", questions);
		model.addAttribute("answers", answers);
		model.addAttribute("keys", keys);
		if (score < 40)
			model.addAttribute("message", "Oh..oh !");
		else if (score > 40 && score <= 60)
			model.addAttribute("message", "Not bad !");
		else if (score > 60 && score <= 70)
			model.addAttribute("message", "Quite good !");
		else if (score > 70 && score <= 90)
			model.addAttribute("message", "Good !");
		else if (score > 90)
			model.addAttribute("message", "Excellent !");

		return "Score";
	}

	@RequestMapping(value = { "/loadSelectedQuestion" }, method = RequestMethod.GET)
	public void loadSelectedQuestion(HttpServletResponse response, @RequestParam("idsession") String idsession)
			throws IOException {
		List<String> answers = timeSessionService.getAnswersByIdSession(idsession);
		StringBuffer sb = new StringBuffer();
		for (int j = 0; j < answers.size(); j++) {
			if (answers.get(j) == null || "".equals(answers.get(j))) {
				sb.append("<item>");
				sb.append("<checked>false</checked>");
				sb.append("</item>");
			} else {
				sb.append("<item>");
				sb.append("<checked>true</checked>");
				sb.append("</item>");
			}
		}
		System.out.println(sb.toString());
		response.getWriter().write("<items>" + sb.toString() + "</items>");
	}

	@RequestMapping(value = { "/calculateCountDown" }, method = RequestMethod.GET)
	public void calculateCountDown(HttpServletResponse response, @RequestParam("idsession") String idsession)
			throws IOException {
		System.out.println("aaa "+idsession);
		Date timeEnd = timeSessionService.getTimeEndByIdSession(idsession);
		System.out.println("bbb "+timeEnd);
		Date date = new Date();
		long diff = timeEnd.getTime() - date.getTime();
		long diffSeconds = diff / 1000 % 60;
		long diffMinutes = diff / (60 * 1000) % 60;
		response.getWriter().write("<time>" + diffMinutes + ":" + diffSeconds + "</time>");
	}

	@RequestMapping(value = { "/calculateScore" }, method = RequestMethod.GET)
	public String calculateScore(ModelMap model, @RequestParam("answer") String answer,
			@RequestParam("idquestion") String idquestion, @RequestParam("idsession") String idsession) {
		// save question
		Sessions session = new Sessions();
		session.setIdQuestion(idquestion);
		session.setIdSession(idsession);
		sessionService.saveAnswer(session, answer);

		List<String> idQuestions = timeSessionService.getQuestionsByIdSession(idsession);
		List<String> answers = timeSessionService.getAnswersByIdSession(idsession);
		List<String> keys = keyService.getListKeyByListIdQuestions(idQuestions);
		int score = 0;
		for (int i = 0; i < keys.size(); i++) {
			if (answers.get(i).equals(keys.get(i)))
				score += 5;
		}
		model.addAttribute("score", score);
		// set score for student
		return "Score";
	}

	@RequestMapping(value = { "/onlineTest" }, method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String getAllQuestion(ModelMap model, HttpServletResponse response, HttpServletRequest request)
			throws UnsupportedEncodingException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		long position = 0;
		// get list question if still having time with cookie
		String idOldSession = "";
		Cookie cookies[] = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("takeOnlineTest")) {
				idOldSession = cookie.getValue();
				break;
			}
		}
		if (idOldSession.contains(user)) {
			List<String> ids = sessionService.getAllIdSession();
			for (String id : ids) {
				if (id.equals(idOldSession))
					break;
				position++;
			}
		} else {
			// get list question if still having time with db server
			String idTime = timeSessionService.getIdByUserIfAvailable(user);
			if (!idTime.equals("")) {
			Date timeE = timeSessionService.getTimeEndByIdSession(idTime);
			Date present = new Date();
			long diffSeconds = -1, diffMinutes = -1;
			if(timeE != null) {
				 long diff = timeE.getTime() - present.getTime();
				 diffSeconds = diff / 1000 % 60;
				 diffMinutes = diff / (60 * 1000) % 60;
			}
			if(diffMinutes < 0 && diffSeconds <0) {
				return "redirect:feedback";
			} else {
				List<String> ids = sessionService.getAllIdSession();
				for (String id : ids) {
					if (id.equals(idTime))
						break;
					position++;
				}
			}
			} else {
			// ---- random question ----
			List<Question> questions = new ArrayList<Question>();
			List<Question> type1level1 = questionService.findQuestionByTypeAndLevel(3, "type001", "1");
			List<Question> type1level2 = questionService.findQuestionByTypeAndLevel(4, "type001", "2");
			List<Question> type1level3 = questionService.findQuestionByTypeAndLevel(3, "type001", "3");

			List<Question> type1level4 = questionService.findQuestionByTypeAndLevel(4, "type002", "1");
			List<Question> type1level5 = questionService.findQuestionByTypeAndLevel(3, "type002", "2");
			List<Question> type1level6 = questionService.findQuestionByTypeAndLevel(3, "type002", "3");

			for (Question question : type1level1) {
				questions.add(question);
			}
			for (Question question : type1level2) {
				questions.add(question);
			}
			for (Question question : type1level3) {
				questions.add(question);
			}
			for (Question question : type1level4) {
				questions.add(question);
			}
			for (Question question : type1level5) {
				questions.add(question);
			}
			for (Question question : type1level6) {
				questions.add(question);
			}

			// ---- get current time ----

			// DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			// String timeStart = dateFormat.format(date);
			long time = date.getTime();

			// ---- set cookies ----

			String id = user + "-" + time;
			Cookie cookie = new Cookie("takeOnlineTest", id);
			cookie.setMaxAge(40 * 60);
			response.addCookie(cookie);

			// ---- add timeSession ----

			long m = 40 * 60 * 1000;
			Date dateAfter = new Date(time + m);
			// String timeEnd = dateFormat.format(dateAfter);
			timeSessionService.createTimeSession(id, date, dateAfter);

			// ---- take current position ----

			position = sessionService.getCurrentPosition();
						
			// ---- add list questions to session ----

			for (Question question : questions) {
				sessionService.createSession(id, question.getIdQuestion());
			}

			}
		}
		model.addAttribute("position", position);
		model.addAttribute("numberOfQuestion", position % 20);

		// Session session = sessionService.getSessionByPosition((int) position);//list
		// session
		List<Sessions> listSession = sessionService.getListSessionByPosition((int) position);
		// Question currentQuestion =
		// questionService.getQuestionById(session.getIdQuestion());//list question
		List<Question> listQuestion = new ArrayList<Question>();
		for (Sessions session : listSession) {
			listQuestion.add(questionService.getQuestionById(session.getIdQuestion()));
		}
		// model.addAttribute("session", session);
		// model.addAttribute("question", currentQuestion);
		model.addAttribute("listSession", listSession);
		model.addAttribute("listQuestion", listQuestion);
		model.addAttribute("idSession", listSession.get(0).getIdSession());
		model.addAttribute("disablePrevious", true);

		// ---- clock ----
		// long diff = dateAfter.getTime() - date.getTime();
		// long diffSeconds = diff / 1000 % 60;
		// long diffMinutes = diff / (60 * 1000) % 60;
		// model.addAttribute("minute", diffMinutes);
		// model.addAttribute("second", diffSeconds);
		// model.addAttribute("disableNext", "false");

		return "OnlineTest";
	}

	@RequestMapping(value = { "/onlineTest" }, method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public String getNextQuestion(HttpServletResponse response, HttpServletRequest request, ModelMap model,
			@RequestParam("action") String action, @RequestParam("answer0") String answer0,
			@RequestParam("answer1") String answer1, @RequestParam("answer2") String answer2,
			@RequestParam("answer3") String answer3, @RequestParam("answer4") String answer4,
			@RequestParam("idsession") String idsession, @RequestParam("idquestion0") String idquestion0,
			@RequestParam("idquestion1") String idquestion1, @RequestParam("idquestion2") String idquestion2,
			@RequestParam("idquestion3") String idquestion3, @RequestParam("idquestion4") String idquestion4,
			@RequestParam("position") long position) throws UnsupportedEncodingException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// get and set clock
		// StringTokenizer sttoken = new StringTokenizer(time, ":");
		// model.addAttribute("minute", sttoken.nextToken());
		// model.addAttribute("second", sttoken.nextToken());
		// save answer
		model.addAttribute("idSession", idsession);
		if (!answer0.equals("on") && !answer1.equals("on") && !answer2.equals("on") && !answer3.equals("on")
				&& !answer4.equals("on")) {
			Sessions session0 = new Sessions();
			session0.setIdQuestion(idquestion0);
			session0.setIdSession(idsession);
			sessionService.saveAnswer(session0, answer0);

			Sessions session1 = new Sessions();
			session1.setIdQuestion(idquestion1);
			session1.setIdSession(idsession);
			sessionService.saveAnswer(session1, answer1);

			Sessions session2 = new Sessions();
			session2.setIdQuestion(idquestion2);
			session2.setIdSession(idsession);
			sessionService.saveAnswer(session2, answer2);

			Sessions session3 = new Sessions();
			session3.setIdQuestion(idquestion3);
			session3.setIdSession(idsession);
			sessionService.saveAnswer(session3, answer3);

			Sessions session4 = new Sessions();
			session4.setIdQuestion(idquestion4);
			session4.setIdSession(idsession);
			sessionService.saveAnswer(session4, answer4);
		}
		if (action.equals("Next")) {
			position += numberOfQuestionPerPage;
			model.addAttribute("numberOfQuestion", position % 20);
			// show next question
			List<Sessions> listSession = sessionService.getListSessionByPosition((int) position);
			List<Question> listQuestion = new ArrayList<Question>();
			for (Sessions session : listSession) {
				listQuestion.add(questionService.getQuestionById(session.getIdQuestion()));
			}
			model.addAttribute("listSession", listSession);
			model.addAttribute("listQuestion", listQuestion);

			// Session nextSession = sessionService.getSessionByPosition((int)position);
			// Question currentQuestion =
			// questionService.getQuestionById(nextSession.getIdQuestion());
			// model.addAttribute("session", nextSession);
			// model.addAttribute("question", currentQuestion);
			if (((position + 5) % 20) == 0)// test with 20 -- number of question
				model.addAttribute("disableNext", true);
			model.addAttribute("position", position);
		} else if (action.equals("Previous")) {
			// show previous question
			position -= numberOfQuestionPerPage;
			model.addAttribute("numberOfQuestion", position % 20);
			// Session nextSession = sessionService.getSessionByPosition((int)position);
			// Question currentQuestion =
			// questionService.getQuestionById(nextSession.getIdQuestion());
			// model.addAttribute("session", nextSession);
			// model.addAttribute("question", currentQuestion);
			List<Sessions> listSession = sessionService.getListSessionByPosition((int) position);
			List<Question> listQuestion = new ArrayList<Question>();
			for (Sessions session : listSession) {
				listQuestion.add(questionService.getQuestionById(session.getIdQuestion()));
			}
			model.addAttribute("listSession", listSession);
			model.addAttribute("listQuestion", listQuestion);
			if (position == 0 || (position - 5) % 20 == 0)// test with 20
				model.addAttribute("disablePrevious", true);
			model.addAttribute("position", position);
		} else if (action.equals("Finish")) {
			List<String> idQuestions = timeSessionService.getQuestionsByIdSession(idsession);
			List<String> answers = timeSessionService.getAnswersByIdSession(idsession);
			List<String> keys = keyService.getListKeyByListIdQuestions(idQuestions);
			int score = 0;
			int totalCorrect = 0;
			for (int i = 0; i < keys.size(); i++) {
				if (answers.get(i) != null) {
				if (answers.get(i).equals(keys.get(i))) {
					totalCorrect += 1;
					score += 5;
				}
				}
			}
			List<Question> questions = new ArrayList<Question>();
			for (String idQ : idQuestions) {
				questions.add(questionService.getQuestionById(idQ));
			}
			model.addAttribute("score", score);
			model.addAttribute("totalCorrect", totalCorrect);
			model.addAttribute("questions", questions);
			model.addAttribute("answers", answers);
			model.addAttribute("keys", keys);

			if (score < 40)
				model.addAttribute("message", "Oh..oh !");
			else if (score > 40 && score <= 60)
				model.addAttribute("message", "Not bad !");
			else if (score > 60 && score <= 70)
				model.addAttribute("message", "Quite good !");
			else if (score > 70 && score <= 90)
				model.addAttribute("message", "Good !");
			else if (score > 90)
				model.addAttribute("message", "Excellent !");
			// set score for student
			studentService.updateScoreByIdAccount(user, score);
			// set tested
			studentService.updateTestedByIdAccount(user);
			return "Score";
		}
		return "OnlineTest";
	}
}