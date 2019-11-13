package com.xr.springboot.controller;

import com.xr.springboot.mapper.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RestController
public class IndexController {

    @RequestMapping("/addUser")
    public User getUser(User user){
        System.out.println("user = [" + user + "]");
        System.out.println("asfs55ad");
        return user;
    }

    @RequestMapping("/index")
    public ModelAndView hello(HttpServletRequest request, @RequestParam(value = "name", defaultValue = "springboot-thymeleaf") String name) {
        request.setAttribute("name", name);
        ModelAndView mav = new ModelAndView("hello");
        mav.addObject("name",name);
        return mav;
    }
}
