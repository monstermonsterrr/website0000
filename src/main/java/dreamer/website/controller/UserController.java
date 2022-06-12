package dreamer.website.controller;

import dreamer.website.pojo.User;
import dreamer.website.service.UserService;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping("/ajax")
    public String index(){
        return "form";
    }

    //SpringBoot接收ajax请求的方式
    //方式一：使用HttpServletRequest request接收请求参数
    @GetMapping("/addUser")
    @ResponseBody
    public void addUser(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("AJAX传递的参数：" + username);
        User user = new User();
        user.setUserusername(username);
        user.setUserpass(password);
        userService.insertAccount(user);


    }

    @RequestMapping("/loginUser")
    public String loginUser(HttpServletRequest request,@ApiParam(value = "模型参数",required = true) Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int count = userService.selectByuserandpass(username,password);
        if (count == 1 ){

            return "TransactionAdd";
        }else{
            return "index";
        }
    }

    @RequestMapping("/queryUser")
    public void checkAll(Model model){
     /* List<User> user = userService.selectAll();
      model.addAttribute("userList",user);
      return "index";*/
    }

    @GetMapping("/delete/{id}")
    public  void deleteUser(HttpServletRequest request, @PathVariable("id") int id){
            /*userService.deleteUserById(id);
            return "index"; //判断如何返回页面*/

    }

    @GetMapping("/update/{id}")
    public  void updateUser(@PathVariable("id")int id, Model model){
       /* User user = userService.selectById(id);
        model.addAttribute("user",user);
        user.setUsername(user.getUsername());
        userService.updateUserName(user);
        return "/updateUser";*/
    }


    @RequestMapping("/register")
    public String register(){
        return "/Register";
    }




}
/*
    @RequestMapping("/updateUser")
    public  String updateUserFinish(User user){
        return "redirect:/queryUser";
    }
}
*/
