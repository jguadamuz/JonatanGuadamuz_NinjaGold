package com.jonatan.ninjagold;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(path = "/Gold")
public class HomeController {

	int moneyTotal = 0;
	String message = "";
	Date now;
	
	@RequestMapping(path = "")
	public String result(@RequestParam(name = "choice", required = false) String choice, Model model) {
		
		now = new Date();
		int moneyEarned;
		if (choice == null) {
			choice = "";
			message = "";
			moneyTotal = 0;
			moneyEarned = 0;
		}
		switch (choice) {
		case "farm":
			moneyEarned = 10;
			moneyTotal += moneyEarned;
			message += "<p class='earned'>You entered a farm and earned " + moneyEarned + 
					" gold. (" + now.toString() + ")</p>";
			break;
		case "cave":
			moneyEarned = 5;
			moneyTotal += moneyEarned;
			message += "<p class='earned'>You entered a cave and earned " + moneyEarned + 
					" gold. (" + now.toString() + ")</p>";
			break;
		case "house":
			moneyEarned = 2;
			moneyTotal += moneyEarned;
			message += "<p class='earned'>You entered a house and earned " + moneyEarned + 
					" gold. (" + now.toString() + ")</p>";
			break;
		case "casino":
			moneyEarned = -20;
			moneyTotal += moneyEarned;;
			message += "<p class='lost'>You entered a casino and lost " + (int)Math.abs(moneyEarned) + 
					" gold. (" + now.toString() + ")</p>";
			break;
		default:
			moneyEarned = 0;
			moneyTotal = 0;
			break;
		}
		
		model.addAttribute("moneyTotal", moneyTotal);
		model.addAttribute("message", message);
		return "home.jsp";
	}
}
