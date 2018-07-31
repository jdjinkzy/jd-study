package org.jd.study.springboot.spring.proxy;

public class TestClassProxy {
	public void addUser(String id, String password) {  
        System.out.println(".: 调用了TestClassProxy.addUser()方法！ ");  
  
    }  
  
    public void delUser(String id) {  
        System.out.println(".: 调用了TestClassProxy.delUser()方法！ ");  
  
    }  
}
