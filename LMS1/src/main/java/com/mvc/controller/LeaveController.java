package com.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mvc.model.Leave;
import com.mvc.service.LeaveService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LeaveController {

    private LeaveService service;

    public LeaveController(LeaveService service) {
        this.service = service;
    }

    @RequestMapping("/applyleave")
    public ModelAndView applyLeavePage() {

        ModelAndView mv =
                new ModelAndView("applyleave.jsp");

        mv.addObject(
                "leave",
                new Leave());

        return mv;
    }

    @RequestMapping("/saveleave")
    public ModelAndView saveLeave(
            @ModelAttribute Leave leave,
            HttpSession session) {

        String email =
                (String) session.getAttribute("email");

        leave.setEmail(email);
        leave.setStatus("Pending");

        service.saveLeave(leave);

        return new ModelAndView(
                "redirect:/myleaves");
    }

    @RequestMapping("/myleaves")
    public ModelAndView myLeaves(
            HttpSession session) {

        String email =
                (String) session.getAttribute("email");

        List<Leave> leaves =
                service.getLeavesByEmail(email);

        ModelAndView mv =
                new ModelAndView(
                        "myleaves.jsp");

        mv.addObject(
                "leaves",
                leaves);

        return mv;
    }

    @RequestMapping("/viewleaves")
    public ModelAndView viewAllLeaves() {

        List<Leave> leaves =
                service.getAllLeaves();

        ModelAndView mv =
                new ModelAndView(
                        "viewleaves.jsp");

        mv.addObject(
                "leaves",
                leaves);

        return mv;
    }

    @RequestMapping("/approve/{id}")
    public ModelAndView approveLeave(
            @PathVariable int id) {

        service.updateStatus(
                id,
                "Approved");

        return new ModelAndView(
                "redirect:/viewleaves");
    }

    @RequestMapping("/reject/{id}")
    public ModelAndView rejectLeave(
            @PathVariable int id) {

        service.updateStatus(
                id,
                "Rejected");

        return new ModelAndView(
                "redirect:/viewleaves");
    }

    @RequestMapping("/deleteleave")
    public ModelAndView deleteLeave(
            int id) {

        service.deleteLeave(id);

        return new ModelAndView(
                "redirect:/viewleaves");
    }

    @RequestMapping("/editleave/{id}")
    public ModelAndView editLeave(
            @PathVariable int id) {

        Leave leave =
                service.searchLeave(id);

        ModelAndView mv =
                new ModelAndView(
                        "editleave.jsp");

        mv.addObject(
                "leave",
                leave);

        return mv;
    }

    @RequestMapping("/updateleave")
    public ModelAndView updateLeave(
            @ModelAttribute Leave leave) {

        service.saveLeave(leave);

        return new ModelAndView(
                "redirect:/viewleaves");
    }
}