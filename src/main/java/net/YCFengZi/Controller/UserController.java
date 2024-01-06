package net.YCFengZi.Controller;

import net.YCFengZi.Pojo.User;
import net.YCFengZi.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

/**
 * @Author：YCFengZi
 * @Date：2023/12/28 17:33
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;


    @PostMapping("/login")
    public String login(User user, HttpSession session, Model model) {
        User byUser = userService.findByUser(user.getUsername(), user.getPassword());
        if (byUser != null) {
            session.setAttribute("user",byUser);
            return "forward:/index.jsp";
        } else {
            model.addAttribute("msg","用户密码错误！");
            return "login";
        }
    }
}