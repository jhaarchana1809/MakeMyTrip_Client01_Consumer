package com.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nit.binding.Passenger;
import com.nit.binding.Ticket;
import com.nit.service.MakeMyTripService;

@Controller
public class MakeMyTripController {
	@Autowired
	private MakeMyTripService mmts;
	@GetMapping("/")
	public String formDisplay()
	{
		return "index";
	}
	
	@GetMapping("/search")
	public String searchPage()
	{
		return "search";
	}
	
	
	@GetMapping("/searchTicket")
	public String getTicketDetails(@RequestParam("ticketId") Integer ticketId, Model model) {
		Ticket ticket = mmts.getTicket(ticketId);
		model.addAttribute("ticket", ticket);
		return "search";
	}
	
	@PostMapping("/bookTicket")
	public String bookTicket(Passenger passenger, Model model)
	{
		//System.out.println(passenger);
		Ticket ticket = mmts.processBookingTicket(passenger);
		model.addAttribute("ticket", ticket);
		return "success";
	}

}
