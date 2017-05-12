package com.game.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.game.model.Customer;
import com.game.service.CustomerService;
import com.game.validator.CustomerValidator;

@Controller
public class CustomerController {

@Autowired
private CustomerService customerService;	
	
@Autowired
CustomerValidator customerValidator;

@RequestMapping("/ev/customerForm")
public String getcustomerdetails(Model model){
	model.addAttribute("customer",new Customer());
	return "CustomerDetails";
}

@RequestMapping("/ev/CustomerDetails")
public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer,BindingResult result,Model model)
{
	customerValidator.validate(customer, result);
	if(result.hasErrors())
		return "CustomerDetails";
	
	try{
		customerService.saveCustomer(customer);
	}catch(Exception e){
		model.addAttribute("duplicateUsername","Username already exists. Please enter different username");
		model.addAttribute("registrationSuccess","Registered successfully.. Please enter ur Login Credential");
				System.out.println("Exception is" + e.getMessage());
				return "CustomerDetails";
	}
	return "Login";
}
}
