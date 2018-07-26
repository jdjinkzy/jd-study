package org.jd.study.springboot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.util.StopWatch;
import org.springframework.web.servlet.DispatcherServlet;

@SpringBootApplication
public class StarterApplication extends SpringBootServletInitializer {
	
    private static Logger LOG = LoggerFactory.getLogger(StarterApplication.class);

    public static void main(String[] args) throws Exception {
        SpringApplication.run(StarterApplication.class, args);
        LOG.info("DazhaxieStarterApplication 启动成功");
        
        DispatcherServlet dispatcherServlet = null;
        
        org.springframework.boot.web.servlet.context.AnnotationConfigServletWebServerApplicationContext a = null;
    }
    
    public static void main2(String[] args) {
    	StopWatch stopWatch = new StopWatch();
	}
}
