package org.jd.study.springboot;

import org.jd.study.springboot.controller.HelloWorldController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.asm.SpringAsmInfo;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.util.StopWatch;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.mvc.Controller;

@SpringBootApplication
public class StarterApplication extends SpringBootServletInitializer {
	
    private static Logger LOG = LoggerFactory.getLogger(StarterApplication.class);

    public static void main(String[] args) throws Exception {
        SpringApplication.run(StarterApplication.class, args);
        LOG.info("DazhaxieStarterApplication 启动成功");
        
        HelloWorldController abc = new HelloWorldController();
        
        System.out.println((abc instanceof Controller));
        
        DispatcherServlet dispatcherServlet = null;
        
        org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext a = null;
        
        System.out.println(SpringAsmInfo.ASM_VERSION);
        
        System.out.println(System.identityHashCode(new StarterApplication()));
        
        //168423058
        //849460928
        
        ResourcePatternResolver resourcePatternResolver = null;
        
        BeanFactory beanFactory = null;
        
    }
    
    public static void main2(String[] args) {
    	StopWatch stopWatch = new StopWatch();
	}
}
