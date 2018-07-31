package org.jd.study.springboot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.Controller;

@RestController
public class HelloWorldController {
    @RequestMapping("/hello")
    public String index() {
    	System.out.println((this instanceof Controller));
        return "Hello World";
    }
}