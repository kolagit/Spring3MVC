package net.viralpatel.spring3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
	
	 int n = 1;
	 
	 @RequestMapping(value = "/show.ajax", method = RequestMethod.GET)  
	 public @ResponseBody  String helloWorld() {
	
	  String message = "Java is good " + n++ +"<br>";
	  System.out.println(message);
	  return  message; 
	 }  
	 
	 @RequestMapping(value = "/reset.ajax", method = RequestMethod.GET)  
	 public @ResponseBody  String resetWorld() {
	  n = 1;
	  String message = " ";
	  System.out.println(message);
	  return  message; 
	 }  
	
	 @RequestMapping(value = "/showDate.ajax", method = RequestMethod.GET)  
	 public @ResponseBody  String printDate(@RequestParam(value = "date") String date) {
	  
	  String message = "You Selected  " + date +"<br>";
	  System.out.println(message);
	  return  message; 
	 }  
	
}
