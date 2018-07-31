package org.jd.study.springboot.spring.proxy;
public class Client {  
  
    public static void main(String[] args) {  
  
        UserManager userManager = (UserManager) new CGLibProxy()  
                .createProxyObject(new UserManagerImpl());  
        System.out.println("-----------CGLibProxy-------------");  
        userManager.addUser("tom", "root");  
        System.out.println("-----------JDKProxy-------------");  
        JDKProxy jdkPrpxy = new JDKProxy();  
        UserManager userManagerJDK = (UserManager) jdkPrpxy  
                .newProxy(new UserManagerImpl());  
        userManagerJDK.addUser("tom", "root");  
        
        System.out.println("-----------JDKProxy2-------------");  
        JDKProxy jdkPrpxy2 = new JDKProxy();  
        TestClassProxy testClassProxy = (TestClassProxy) jdkPrpxy  
                .newProxy(new TestClassProxy());  
        testClassProxy.addUser("tom", "root");  
    }  
  
}