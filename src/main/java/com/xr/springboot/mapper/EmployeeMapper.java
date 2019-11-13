package com.xr.springboot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xr.springboot.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmployeeMapper extends BaseMapper<User> {
}
