package com.silverdawn.curddemo.service;

public interface UserService {
    //登录也就是查询,查询数据中是否有这个用户
    public boolean login(String username, String password);
}
