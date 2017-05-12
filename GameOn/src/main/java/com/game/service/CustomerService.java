package com.game.service;

import com.game.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}
