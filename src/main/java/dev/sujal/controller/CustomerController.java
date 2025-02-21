package dev.sujal.controller;

import dev.sujal.model.Customer;
import dev.sujal.service.ICustomerManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private ICustomerManagementService service;

    @GetMapping("/list")
    public String listCustomers(Map<String,Object> model){
        List<Customer> customerList=service.getAllCustomers();
        model.put("customerList",customerList);
        return "list-customers";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Map<String,Object> model){
        Customer customer=new Customer();
        model.put("customer",customer);
        return "customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){
        service.saveCustomer(customer);
        return  "redirect:/customer/list";
    }

    @GetMapping("/showFormUpdate")
    public String showUpdateForm(@RequestParam("customerId") Integer id,Map<String,Object> model){
        Customer customer=service.getCustomer(id);
        model.put("customer",customer);
        return "customer-form";
    }
    @GetMapping("/deleteCustomer")
    public String deleteCustomer(@RequestParam Integer customerId){
        service.deleteCustomer(customerId);
        return "redirect:/customer/list";
    }
}
