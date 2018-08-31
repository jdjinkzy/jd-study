package org.jd.study.springboot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.Controller;

@RestController
public class HelloWorldController {
    @RequestMapping("/hello")
    public String index() throws InterruptedException {
    	//System.out.println((this instanceof Controller));
    	Thread.sleep(30);
        return "Hello World";
    }
}