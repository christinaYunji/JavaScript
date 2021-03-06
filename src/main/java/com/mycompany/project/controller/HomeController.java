package com.mycompany.project.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/main.do")
	public String main() throws Exception {
		LOGGER.info("실행");
		return "home/main";
	}
	
	@RequestMapping("/exam01_where_to.do")
	public String exam01_where_to() {
		LOGGER.info("실행");
		return "home/exam01_where_to";
	}
	
	@RequestMapping("/exam02_output.do")
	public String exam02_output() {
		LOGGER.info("실행");
		return "home/exam02_output";
	}
	
	@RequestMapping("/exam03_variables.do")
	public String exam03_variable() {
		LOGGER.info("실행");
		return "home/exam03_variables";
	}
	
	@RequestMapping("/exam04_operator.do")
	public String exam04_operator() {
		LOGGER.info("실행");
		return "home/exam04_operator";
	}
	
	@RequestMapping("/exam05_undefined_null.do")
	public String exam05_undefined_null() {
		LOGGER.info("실행");
		return "home/exam05_undefined_null";
	}
	
	@RequestMapping("/exam06_function.do")
	public String exam06_function() {
		LOGGER.info("실행");
		return "home/exam06_function";
	}
	
	@RequestMapping("/exam07_object.do")
	public String exam07_object() {
		LOGGER.info("실행");
		return "home/exam07_object";
	}
	
	@RequestMapping("/exam08_event.do")
	public String exam08_event() {
		LOGGER.info("실행");
		return "home/exam08_event";
	}
	
	@RequestMapping("/exam09_string.do")
	public String exam09_string() {
		LOGGER.info("실행");
		return "home/exam09_string";
	}
	
	@RequestMapping("/exam10_built_in_object.do")
	public String exam10_built_in_object() {
		LOGGER.info("실행");
		return "home/exam10_built_in_object";
	}
	
	@RequestMapping("/exam11_try_catch.do")
	public String exam11_try_catch() {
		LOGGER.info("실행");
		return "home/exam11_try_catch";
	}
	
	@RequestMapping("/exam12_class.do")
	public String exam12_class() {
		LOGGER.info("실행");
		return "home/exam12_class";
	}
	
	@RequestMapping("/exam13_bom.do")
	public String exam13_bom() {
		LOGGER.info("실행");
		return "home/exam13_bom";
	}
	
	@RequestMapping("/exam14_dom.do")
	public String exam14_dom() {
		LOGGER.info("실행");
		return "home/exam14_dom";
	}
	
	@RequestMapping("/exam15_jquery.do")
	public String exam15_jquery() {
		LOGGER.info("실행");
		return "home/exam15_jquery";
	}
	
	@RequestMapping("/exam16_ajax.do")
	public String exam16_ajax() {
		LOGGER.info("실행");
		return "home/exam16_ajax";
	}
	
	@RequestMapping("/ajaxContent1.do")
	public String ajaxContent1() {
		LOGGER.info("실행");
		return "home/exam16_ajaxContent1";
	}
	
	@RequestMapping("/ajaxContent2.do")
	public void ajaxContent2(HttpServletResponse response) throws Exception {
		LOGGER.info("실행");
		response.setContentType("application/json; charset=UTF-8");
		//만들고 싶은 JSON = {"img":"milk3.jpg"}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("img", "milk6.jpg");
		String json = jsonObject.toString();
		PrintWriter pw = response.getWriter();
		pw.write(json);
		pw.flush();
		pw.close();		
	}
	
	@RequestMapping("/ajaxLogin.do")
	public void ajaxLogin(String mid, String mpassword, HttpServletResponse response, HttpSession session) throws Exception {
		LOGGER.info("실행");
		
		Map<String, String> db = new HashMap<>();
		db.put("summer", "12345");
		db.put("fall", "67890");
		
		String result = "wrongMid";
		
		if (db.containsKey(mid)){
			if (db.get(mid).equals(mpassword)) {
				session.setAttribute("sessionMid", mid);
				result = "success";
			}	else {
					result = "wrongMpassword";
			}
		}
		response.setContentType("application/json; charset=UTF-8");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", result);
		String json = jsonObject.toString();
		PrintWriter pw = response.getWriter();
		pw.write(json);
		pw.flush();
		pw.close();		
	}
	
	@RequestMapping("/ajaxLogout.do")
	public void ajaxLogout(HttpServletResponse response, HttpSession session) throws Exception {
		LOGGER.info("실행");
		
		session.invalidate();
		
		response.setContentType("application/json; charset=UTF-8");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "ok");
		String json = jsonObject.toString();
		PrintWriter pw = response.getWriter();
		pw.write(json);
		pw.flush();
		pw.close();		
	}
	
	@RequestMapping("/exam17_css.do")
	public String exam17_css() {
		LOGGER.info("실행");
		return "home/exam17_css";
	}
	
	@RequestMapping("/exam18_layout.do")
	public String exam18_layout() {
		LOGGER.info("실행");
		return "home/exam18_layout";
	}
	
	@RequestMapping("/exam19_mqtt.do")
	public String exam19_mqtt() {
		LOGGER.info("실행");
		return "home/exam19_mqtt";
	}
}