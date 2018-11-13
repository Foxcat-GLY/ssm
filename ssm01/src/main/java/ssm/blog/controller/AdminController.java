package ssm.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 博主控制器
 */
@Controller  // 注册为控制器bean
@RequestMapping(value = "/blogAdmin")    // 请求路径
public class AdminController {

    @RequestMapping(value="/index")
    public String index(){
        return "admin/index";
    }
}
