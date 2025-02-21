package dev.sujal.service;

import dev.sujal.dao.ICustomerManagementDAO;
import dev.sujal.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerManagementService implements ICustomerManagementService{
    @Autowired
    private ICustomerManagementDAO dao;

    @Override
    public void deleteCustomer(Integer customerId) {
        dao.deleteById(customerId);
    }

    @Override
    public Customer getCustomer(Integer customerId) {
        Optional<Customer> customer=dao.findById(customerId);
        return customer.get();
    }

    @Override
    public void saveCustomer(Customer customer) {
        dao.save(customer);
    }

    @Override
    public List<Customer> getAllCustomers() {
        return (List<Customer>) dao.findAll();
    }
}
