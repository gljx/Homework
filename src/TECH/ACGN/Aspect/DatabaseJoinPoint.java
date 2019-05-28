package TECH.ACGN.Aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;



public class DatabaseJoinPoint {
    public void before(JoinPoint jp){

    }

    public void after(JoinPoint jp){

    }

    public void around(ProceedingJoinPoint bjp) throws Throwable {
        bjp.proceed();
    }
}
