package com.silverdawn.curddemo.service.impl;

import com.silverdawn.curddemo.dao.UserMapper;
import com.silverdawn.curddemo.domain.User;
import com.silverdawn.curddemo.domain.UserExample;
import com.silverdawn.curddemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    //通过用户名和密码查询用户，也就是实现登录功能===查询
    @Override
    public boolean login(String username, String password) {
        UserExample userExample=new UserExample();
        userExample.createCriteria().andUsernameEqualTo(username)
                .andPasswordEqualTo(password);
        List<User> user=userMapper.selectByExample(userExample);
        return user.size()>0 ? true:false;
    }
}
