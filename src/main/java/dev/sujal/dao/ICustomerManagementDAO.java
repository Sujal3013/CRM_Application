package dev.sujal.dao;

import dev.sujal.model.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICustomerManagementDAO extends CrudRepository<Customer,Integer> {
}
