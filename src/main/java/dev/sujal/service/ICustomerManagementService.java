package dev.sujal.service;

import dev.sujal.model.Customer;

import java.util.List;

public interface ICustomerManagementService {
    public List<Customer> getAllCustomers();
    public void saveCustomer(Customer customer);
    public Customer getCustomer(Integer customerId);
    public void deleteCustomer(Integer customerId);
}
