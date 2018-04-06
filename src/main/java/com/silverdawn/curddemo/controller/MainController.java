package com.silverdawn.curddemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *这个类可以专门用来做跳转，各种跳转
 *
 */
@Controller
public class MainController {
    //登录成功，调整到主页面main.jsp
    @RequestMapping("/main")
    public String main(){
        return "main";
    }

    //点击注册按钮，调整到注册页面
    @RequestMapping("/regist")
    public String goRegist(){
        return "regist";
    }
}
