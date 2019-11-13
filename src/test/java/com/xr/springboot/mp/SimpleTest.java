package com.xr.springboot.mp;

import com.xr.springboot.service.EmployeeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SimpleTest {

    @Autowired
    private EmployeeService employeeService;

    @Test
    public void select(){
        employeeService.select();
    }

    @Test
    public void insert(){
        employeeService.insert();
    }


    @Test
    public void selectByMap(){
        employeeService.selectByMap();
    }

    @Test
    public void selectByWrapper(){
        employeeService.selectByWrapper();
    }

    @Test
    public void selectByLambda(){
        employeeService.selectByLambda();
    }

    @Test
    public void selectByLambdaSuper(){
        employeeService.selectByLambdaSuper();
    }
}
