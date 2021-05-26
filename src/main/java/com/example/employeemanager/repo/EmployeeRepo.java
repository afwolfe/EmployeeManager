package com.example.employeemanager.repo;

import com.example.employeemanager.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public class EmployeeRepo extends JpaRepository<Employee, Long> {
}
