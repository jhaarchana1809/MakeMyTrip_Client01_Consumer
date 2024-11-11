package com.nit.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nit.binding.Passenger;
import com.nit.binding.Ticket;

@Service
public class MakeMyTripService {
	@Value("${irctc.endpoint.book_ticket}")
	private String IRCTC_URL;
	@Value("${irctc.endpoint.get_ticket}")
	private  String IRCTC_URL_GET;
	
	
	public Ticket getTicket(Integer id)
	{
		RestTemplate rt= new RestTemplate();
		ResponseEntity<Ticket> re = rt.getForEntity(IRCTC_URL_GET, Ticket.class, id);
		int statusCodeValue = re.getStatusCode().value();
		if(statusCodeValue==200)
		{
			Ticket ticket = re.getBody();
			return ticket;
		}
		return null;
	}
	
	
	public Ticket processBookingTicket(Passenger passenger)
	{
		RestTemplate rt= new RestTemplate();
		ResponseEntity<Ticket> re = rt.postForEntity(IRCTC_URL, passenger, Ticket.class);
		int statusCodeValue = re.getStatusCode().value();
		if(statusCodeValue==200)
		{
			Ticket ticket = re.getBody();
			return ticket;
		}
		return null;
	}
	
	

}
