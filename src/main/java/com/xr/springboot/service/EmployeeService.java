package com.xr.springboot.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.additional.query.impl.LambdaQueryChainWrapper;
import com.xr.springboot.entity.User;
import com.xr.springboot.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    public void select(){
        List<User> employeeList = employeeMapper.selectList(null);
        employeeList.forEach(System.out::println);
    }

    public void insert(){
       User user = new User();
       user.setAge(36);
       user.setCreateTime(LocalDateTime.now());
       user.setManagerId(1088248166370832385L);
       user.setName("树方琴");
        int i = employeeMapper.insert(user);
        System.out.println("影响记录数"+i);
    }

    /**
     * 通过Map查询
     */
    public void selectByMap(){
        Map<String,Object> columnMap = new HashMap<>();
        columnMap.put("name","王天风");
        List<User> userList = employeeMapper.selectByMap(columnMap);
        userList.forEach(System.out::println);
    }

    /**
     * 通过Wrapper条件查询
     */
    public void selectByWrapper(){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.likeRight("name","王").and(qw->qw.lt("age",40).or().isNotNull("email"));
        List<User> userList = employeeMapper.selectList(queryWrapper);
        userList.forEach(System.out::println);
    }

    /**
     * 通过Lambda表达式查询，可以防止误写
     */
    public void selectByLambda(){
        LambdaQueryWrapper<User> lambdaQuery = Wrappers.<User>lambdaQuery();
        lambdaQuery.select(User::getId,User::getAge).likeRight(User::getName,"王")
                .and(qwl->qwl.lt(User::getAge,40).or().isNotNull(User::getEmail));
        List<Map<String, Object>> mapList = employeeMapper.selectMaps(lambdaQuery);
        mapList.forEach(System.out::println);
    }

    /**
     * 通过Lambda表达式查询，可以防止误写
     */
    public void selectByLambdaSuper(){
        List<User> userList = new LambdaQueryChainWrapper<User>(employeeMapper)
                .select(User::getId, User::getAge).likeRight(User::getName, "王")
                .and(qwl -> qwl.lt(User::getAge, 40).or().isNotNull(User::getEmail)).list();
        userList.forEach(System.out::println);
    }
}
