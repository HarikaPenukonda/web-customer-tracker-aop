package com.udemy.springdemo.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;



@Aspect
@Component
public class CRMLoggingAspect {
	
	// setup logger
	private Logger myLogger = Logger.getLogger(getClass().getName());
	
	// setup pointcut declarations for controller
	@Pointcut("execution(* com.udemy.springdemo.controller.*.*(..))")
	private void forControllerPackage() {}
	
	// setup pointcut declarations for service
	@Pointcut("execution(* com.udemy.springdemo.service.*.*(..))")
	private void forServicePackage() {}
	
	// setup pointcut declarations for dao
	@Pointcut("execution(* com.udemy.springdemo.dao.*.*(..))")
	private void forDaoPackage() {}
	
	@Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()") // match on these three packages 
	private void forAppFlow() {}
	
	// add @Before advice
	@Before("forAppFlow()")
	public void before(JoinPoint theJoinPoint) {
		
		// display method we are calling
		String theMethod = theJoinPoint.getSignature().toShortString();
		myLogger.info("=====>> in @Before: calling method: " + theMethod);
		
		// display the arguments to the method
		
	}
	
	
	
	// add @AfterReturning advice

}
