package com.silverdawn.curddemo.controller;

import com.silverdawn.curddemo.domain.User;
import com.silverdawn.curddemo.service.UserService;
//import com.silverdawn.curddemo.vo.JsonResponse;
import com.silverdawn.curddemo.vo.JsonResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user") //用于定位访问时对url位置
//在默认情况下springmvc的实例都是单例模式,所以使用scope域将其注解为
// 每次都创建一个新的实例
@Scope("prototype")
public class UserController {

    @Autowired
    UserService userService;

    //欢迎页面，进入后跳转到登录页面
    @RequestMapping("/welcome")
    public String welcome(){
        System.out.println("欢迎登录");
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public JsonResponse login(@RequestBody User user, HttpServletRequest httpServletRequest){
        //调用login方法来验证是否是注册用户
        boolean loginType=userService.login(user.getUsername(),user.getPassword());
        if(loginType){
            //如果验证通过，则将用户信息传到前台
            httpServletRequest.setAttribute("user",user);
            //并且跳转到main.jsp主页面
            return new JsonResponse(true,"ok");
        }else{
            //若不对，则将用户信息传到前台
            //并且回到
            httpServletRequest.setAttribute("message","用户名密码错误");
            return new JsonResponse(false,"fail");
        }
    }

//    @RequestMapping("/deleteUser")
//    @ResponseBody//表示的是消息转换器，比如json或者xml,如果需要返回jsp的话，这边去掉这个就好了
//    public JsonResponse<Boolean> deleteUser(){
//        return new JsonResponse(true);
//    }

//    @RequestMapping("/addUser")
//    @ResponseBody
//    public JsonResponse<Boolean> addUser(@RequestBody User user){
//        System.out.println(user.getUsername());
//        return new JsonResponse(true);
//    }

//    @RequestMapping("/modifyUser")
//    @ResponseBody
//    public JsonResponse<Boolean> modifyUser(){
//        return new JsonResponse(true);
//    }

    //用户注册


}
