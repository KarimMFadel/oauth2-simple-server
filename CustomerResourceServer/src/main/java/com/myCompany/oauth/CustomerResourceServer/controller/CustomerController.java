package com.myCompany.oauth.CustomerResourceServer.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myCompany.oauth.CustomerResourceServer.model.Customer;

@Controller
@RequestMapping("customers")
public class CustomerController {

	@PreAuthorize("#oauth2.hasScope('ADMIN')")
	@RequestMapping(method = RequestMethod.GET, value = "/checkService")
	@ResponseBody
	public Boolean checkService() {
		return true;
	}
	
	// when add role the function doesn't work 
	// hasRole('CUSTOMER_READ') and #oauth2.clientHasRole('CUSTOMER_READ')
	@PreAuthorize("#oauth2.hasScope('CLIENT')  ") 
	@RequestMapping(method = RequestMethod.GET, value = "/getaLL")
	@ResponseBody
	public List<Customer> getALL() {
		List<Customer> customers = new ArrayList<Customer>();
		customers.add(new Customer(new Long(1), "ibrahim", "mohamed", "ibrahim.mohamed"));
		customers.add(new Customer(new Long(2), "khaled", "mohamed", "khaled.mohamed"));
		return customers;
	}
}
