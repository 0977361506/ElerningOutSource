package com.example.project_learning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCousres {
    @RequestMapping("/home/myCourses")
    public String goToHomeMyCourse(){
        return "user/courses/myCourse";
    }
}
