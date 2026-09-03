package com.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mvc.service.EmployeeService;
import com.mvc.service.LeaveService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    private EmployeeService employeeService;
    private LeaveService leaveService;

    public AdminController(
            EmployeeService employeeService,
            LeaveService leaveService) {

        this.employeeService = employeeService;
        this.leaveService = leaveService;
    }

    @RequestMapping("/admin")
    public ModelAndView adminDashboard(
            HttpSession session) {

        ModelAndView mv =
                new ModelAndView("admin.jsp");

        mv.addObject(
                "employeeCount",
                employeeService
                        .getAllEmployees()
                        .size());

        mv.addObject(
                "leaveCount",
                leaveService
                        .getAllLeaves()
                        .size());

        return mv;
    }
}