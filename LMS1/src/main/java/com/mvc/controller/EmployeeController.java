package com.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mvc.model.Employee;
import com.mvc.service.EmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {

    private final EmployeeService service;

    public EmployeeController(EmployeeService service) {
        this.service = service;
    }

    // =========================
    // EMPLOYEE REGISTRATION
    // =========================

    @RequestMapping("/save")
    public ModelAndView saveEmployee(
            @ModelAttribute Employee employee) {

        Employee obj =
                service.saveEmployee(employee);

        ModelAndView mv =
                new ModelAndView("register.jsp");

        if (obj != null) {

            mv.addObject(
                    "status",
                    "Employee Registered Successfully....");

        } else {

            mv.addObject(
                    "status",
                    "Error in adding employee....");
        }

        return mv;
    }

    // =========================
    // LOGIN
    // =========================

    @RequestMapping("/login")
    public ModelAndView checkLogin(
            @RequestParam String email,
            @RequestParam String password,
            HttpSession session) {

        ModelAndView mv;

        // FIXED ADMIN LOGIN
        if (email.equalsIgnoreCase("ADMIN@GMAIL.COM")
                && password.equals("ADMIN@123")) {

            session.setAttribute(
                    "email",
                    "ADMIN@GMAIL.COM");

            session.setAttribute(
                    "role",
                    "ADMIN");

            mv = new ModelAndView(
                    "admin.jsp");

            return mv;
        }

        // EMPLOYEE LOGIN
        Employee employee =
                service.checkLogin(
                        email,
                        password);

        if (employee.getId() != 0) {

            session.setAttribute(
                    "email",
                    employee.getEmail());

            session.setAttribute(
                    "role",
                    "EMPLOYEE");

            session.setAttribute(
                    "employee",
                    employee);

            mv = new ModelAndView(
                    "employee.jsp");

        } else {

            mv = new ModelAndView(
                    "login.jsp");

            mv.addObject(
                    "status",
                    "Invalid Email or Password....");
        }

        return mv;
    }

    // =========================
    // VIEW ALL EMPLOYEES
    // =========================

    @RequestMapping("/findAll")
    public ModelAndView getAllEmployees(
            HttpSession session) {

        ModelAndView mv;

        String role =
                (String) session.getAttribute("role");

        if (!"ADMIN".equals(role)) {

            return new ModelAndView(
                    "redirect:/login.jsp");
        }

        List<Employee> empList =
                service.getAllEmployees();

        mv = new ModelAndView(
                "viewemps.jsp");

        mv.addObject(
                "empList",
                empList);

        return mv;
    }

    // =========================
    // VIEW ONE EMPLOYEE
    // =========================

    @RequestMapping("/findByEmail")
    public ModelAndView searchEmployee(
            @RequestParam String email) {

        Employee employee =
                service.searchEmployee(email);

        ModelAndView mv;

        if (employee.getId() != 0) {

            mv = new ModelAndView(
                    "viewemp.jsp");

            mv.addObject(
                    "employee",
                    employee);

        } else {

            mv = new ModelAndView(
                    "search.jsp");

            mv.addObject(
                    "status",
                    "Employee not found....");
        }

        return mv;
    }

    // =========================
    // OPEN EDIT EMPLOYEE PAGE
    // =========================

    @RequestMapping("/editEmployee")
    public ModelAndView editEmployee(
            @RequestParam int id,
            HttpSession session) {

        String role =
                (String) session.getAttribute("role");

        if (!"ADMIN".equals(role)) {

            return new ModelAndView(
                    "redirect:/login.jsp");
        }

        Employee employee =
                service.searchEmployeeById(id);

        ModelAndView mv =
                new ModelAndView(
                        "edit.jsp");

        mv.addObject(
                "employee",
                employee);

        return mv;
    }

    // =========================
    // UPDATE EMPLOYEE
    // =========================

    @RequestMapping("/edituser")
    public ModelAndView updateEmployee(
            @ModelAttribute Employee employee,
            HttpSession session) {

        String role =
                (String) session.getAttribute("role");

        if (!"ADMIN".equals(role)) {

            return new ModelAndView(
                    "redirect:/login.jsp");
        }

        service.updateEmployee(employee);

        return new ModelAndView(
                "redirect:/findAll");
    }

    // =========================
    // DELETE EMPLOYEE
    // =========================

    @RequestMapping("/delete")
    public ModelAndView deleteEmployee(
            @RequestParam int id,
            HttpSession session) {

        String role =
                (String) session.getAttribute("role");

        if (!"ADMIN".equals(role)) {

            return new ModelAndView(
                    "redirect:/login.jsp");
        }

        service.deleteEmployee(id);

        return new ModelAndView(
                "redirect:/findAll");
    }

    // =========================
    // EMPLOYEE PROFILE
    // =========================

    @RequestMapping("/viewprofile")
    public ModelAndView getProfile(
            HttpSession session) {

        String email =
                (String) session.getAttribute("email");

        Employee employee =
                service.searchEmployee(email);

        ModelAndView mv =
                new ModelAndView(
                        "viewprofile.jsp");

        mv.addObject(
                "employee",
                employee);

        return mv;
    }

    // =========================
    // LOGOUT
    // =========================

    @RequestMapping("/logout")
    public ModelAndView logout(
            HttpSession session) {

        session.invalidate();

        return new ModelAndView(
                "redirect:/");
    }
}