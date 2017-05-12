package com.game.dao;

import com.game.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
Customer getCustomerByUsername(String user);
}