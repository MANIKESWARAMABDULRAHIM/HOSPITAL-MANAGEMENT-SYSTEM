package com.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView home() {

        return new ModelAndView("index.jsp");
    }

    @RequestMapping("/aboutus")
    public ModelAndView aboutUs() {

        return new ModelAndView("aboutus.jsp");
    }

    @RequestMapping("/contactus")
    public ModelAndView contactUs() {

        return new ModelAndView("contactus.jsp");
    }
}