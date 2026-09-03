package com.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.model.Employee;
import com.mvc.repository.EmployeeRepository;

@Service
public class EmployeeService {

    private final EmployeeRepository repository;

    public EmployeeService(EmployeeRepository repository) {
        this.repository = repository;
    }

    // Save employee
    public Employee saveEmployee(Employee employee) {
        return repository.save(employee);
    }

    // Employee login
    public Employee checkLogin(String email, String password) {

        return repository
                .findByEmailAndPassword(email, password)
                .orElse(new Employee());
    }

    // Get all employees
    public List<Employee> getAllEmployees() {
        return repository.findAll();
    }

    // Search employee by email
    public Employee searchEmployee(String email) {

        return repository
                .findByEmail(email)
                .orElse(new Employee());
    }

    // Search employee by ID
    public Employee searchEmployeeById(int id) {

        return repository
                .findById(id)
                .orElse(new Employee());
    }

    // Update employee
    public Employee updateEmployee(Employee employee) {

        Employee existing =
                repository.findById(employee.getId())
                          .orElse(null);

        if (existing != null) {

            existing.setName(employee.getName());
            existing.setEmail(employee.getEmail());
            existing.setAge(employee.getAge());
            existing.setGender(employee.getGender());
            existing.setMobile(employee.getMobile());
            existing.setDepartment(employee.getDepartment());
            existing.setAddress(employee.getAddress());

            return repository.save(existing);
        }

        return null;
    }

    // Delete employee
    public void deleteEmployee(int id) {
        repository.deleteById(id);
    }
}