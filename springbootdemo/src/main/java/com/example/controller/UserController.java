package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/boot/getUser")
    @ResponseBody
    public User getUser(){
        User user = userService.findUserById(1);
        return user;
    }

    @RequestMapping("/boot/getindex")
    public String getindex(Model model){
        model.addAttribute("user","1223131");
        return "index";
    }
}
